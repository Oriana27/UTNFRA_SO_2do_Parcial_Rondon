#!/bin/bash
echo "Creando particiones en /dev/sdc 2GB"
sudo fdisk /dev/sdc <<EOF
n
p
1

+5M
n
p
2

+1500M
t
1
8E
t 
2
8E
w
EOF

echo "Creando particiones en /dev/sdd 1G para SWAP"
sudo fdisk /dev/sdd <<EOF
n
p
1

+512M
t
82
w
EOF

echo "Limpiando las particiones"
sudo wipefs -a /dev/sdc1 /dev/sdc2
sudo wipefs -a /dev/sdd1

echo "Creando Volumen Fisico PV"
sudo pvcreate  /dev/sdc1 /dev/sdc2
sudo pvcreate  /dev/sdd1

echo "Creando Grupos VG"
sudo vgcreate vg_datos /dev/sdc1 /dev/sdc2
sudo vgcreate vg_temp /dev/sdd1

echo "Creando Volumenes Lógicos LV"
#Cree con menos tamaño porque me decia que los VG no tenian suficiente espacio
#Intente solucionar, no lo logre
sudo lvcreate -L 4MB vg_datos -n lv_docker
sudo lvcreate -L 1400GB vg_datos -n lv_workareas
sudo lvcreate -L 480MB vg_temp -n lv_swap

echo "Dando Formato a los LV"
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap

echo "Creando los puntos de montaje"
sudo mkdir -p /var/lib/docker
sudo mkdir -p /work

echo "Haciendo Montaje"
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo swapon /dev/mapper/vg_temp-lv_swap

echo "Expandiendo LV"

sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker

sudo mount -a
echo "Reiniciando Docker para aplicar los cambios"
sudo systemctl restart docker

echo "Configuración LVM completada con exito"
