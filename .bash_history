git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
sudo apt update 
sudo apt install ansible –y 
sudo apt list --installed | grep ansible 
ansible --version
sudo apt install ansible
ansible --version
ssh-keygen -t ed25519
cd .ssh
cat id_ed25519.pub >> authorized_keys 
cat authorized_keys 
cd ..
ifcongig
sudo apt install net-tools 
ifcongig
sudo apt update 
sudo apt install net-tools 
ifcongig
ifconfig
exit
ssh vagrant@192.168.56.3 
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo usermod -a -G docker $(whoami) 
exit
grep docker /etc/group 
sudo systemctl status docker 
cat << EOF > crear_usuario.sh
#!/bin/bash
sudo useradd -m -s /bin/bash -c "Creando Usuario" rondon
# Establecer la contraseña del usuario
echo "rondon:rondon" | sudo chpasswd
echo "Usuario 'rondon' creado con éxito con la contraseña 'rondon'."
EOF

chmod 755 crear_usuario.sh
sudo ./crear_usuario.sh
ls -l
sudo su - rondon
pwd
lsblk
sudo fdisk –l  
sudo fdisk -l  
ls -l
cd RTA_Examen_20241115/
ls -l
vim Punto_A.sh 
cat Punto_A.sh 
cd ..
sudo su - rondon
sudo usermod -aG sudo rondon
groups rondon
sudo su - rondon
exit
suso su - rondon
su - rondon
ls -l
cd RTA_Examen_20241115/
ls -l
vim Punto_A.sh
cd ..
ls <Path_Repo>/202406/bash_script/Lista_Usuarios.txt
find /home/vagrant/ -name Lista_Usuarios.txt
ls UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
ls UTN-FRA_SO_Examenes/202406/docker/ 
cd UTN-FRA_SO_Examenes/202406/docker/ 
ls -l
cat index.html 
vim index.html 
ls -l
su - rondon
ls -l
docker run -d -p 8080:80 –v /UTN-FRA_SO_Examenes/202406/docker/index.html:/usr/share/nginx/html/index.html nginx
docker run -d -p 8080:80 -v /UTN-FRA_SO_Examenes/202406/docker/index.html:/usr/share/nginx/html/index.html nginx
docker ps
df -h
docker build -t danellys/web1-rondon:latest .
vim Dockerfile
ls -l
docker build -t web1-rondon .
vim Dockerfile 
ls -l
docker ps
sudo systemctl restart docker
docker build -t web1-rondon .
cd ..
ls -l
git clone https://github.com/Oriana27/UTNFRA_SO_2do_Parcial_Rondon.git
cd UTN-FRA_SO_Examenes/
ls -l
ls 202406
cd 202406
cd ..
ls -l
pwd
cp -r /UTN-FRA_SO_Examenes/202406 /UTNFRA_SO_2do_Parcial_Rondon
cd UTNFRA_SO_2do_Parcial_Rondon/
ls -l
cp -r /home/vagrant/UTN-FRA_SO_Examenes/202406 /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon
ls -l
mkdir -p /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)
cp -r /home/vagrant/RTA_Examen_20241115/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)/
ls -l
cd RTA_Examen_20241116/
ls -l
car Punto_A.sh
cat Punto_A.sh
cd ..
ls -l
git add .
git commit -m "Resguardando trabajo"
git config --global danellysoriana22@gmail.com
cat .ssh/id_ed25519.pub
cd ..
cat .ssh/id_ed25519.pub
git clone git@github.com:Oriana27/UTNFRA_SO_2do_Parcial_Rondon.git
rm -rf /UTNFRA_SO_2do_Parcial_Rondon
ls -l
rm -rf /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon
ls -l
git clone git@github.com:Oriana27/UTNFRA_SO_2do_Parcial_Rondon.git
ls -l
ssh-keyscan github.com >> ~/.ssh/known_hosts
ssh-keygen -t ed25519 -C "danellysoriana22@gmail.com"
git clone git@github.com:Oriana27/UTNFRA_SO_2do_Parcial_Rondon.git
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git clone git@github.com:Oriana27/UTNFRA_SO_2do_Parcial_Rondon.git
ls -l
cd UTNFRA_SO_2do_Parcial_Rondon/
ls -l
cp -r /home/vagrant/UTN-FRA_SO_Examenes/202406 /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon
mkdir -p /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)
cp -r /home/vagrant/RTA_Examen_20241115/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)/
ls -l
git add .
git status
git commit -m "Resguardando trabajo"
git config --global user.name "Danellys"
git config --global user.email "danellysoriana22@gmail.com"
git commit -m "Resguardando trabajo"
git push -u origin main
clear
cd ..
cd /home/vagrant/UTN-FRA_SO_Examenes/202406
ls -l
cd docker/
ls -l
docker build -t web1-Rondon .
docker build -t web1-rondon .
lsblk
cd ..
sudo umount /var/lib/docker 
sudo umount /work
docker container prune
docker image prune
docker volume prune
docker system prune -a
lsblk
docker info
df -h
sudo systemctl stop docker
docker.socket
sudo vgs
sudo lvdisplay /dev/mapper/vg_datos-lv_docker
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
cd docker/
ls -l
docker build -t web1-rondon .
sudo systemctl stop docker
sudo mkdir -p /home/vagrant/foo/docker
docker container prune
docker image prune
docker volume prune
docker build -t web1-rondon .
docker login -u Danellys
docker login -u danellys
docker build -t web1-rondon .
ls -l
cat Dockerfile 
vim Dockerfile 
docker build -t web1-rondon .
vim imagen.sh
ls -l
vim run.sh
cd ..
cd RTA_Examen_20241115/
ls -l
vim Punto_A.sh
cd .. 
cd UTN-FRA_SO_Examenes/
ls -l
202406
cd 202406
ls -l
cd ansible/
ls -l
cd roles/
ls -l
cd 2do_parcial/
ls -l
cd tasks/
ls -l
cat main.yml 
cd ..
ls -l
cd tests/
ls -l
cat inventory 
vim inventory 
ls -l
cat test.yml 
cd ..
ls -l
vim playbook.yml
ls -l
cd ..
cd UTN-FRA_SO_Examenes/
cd202406
cd 202406
cd ansible/
ls -l
cat playbook.yml 
cd inventory/
ls -l
cd ..
cd roles/
ls -l
rm playbook.yml 
ls -l
cd 2do_parcial/
ls -l
cd tasks/
ls -l
vim main.yml 
cd ..
ls -l
mkdir files
ls -l
cd files/
vim datos_alumno.txt
ls -l
ifconfig
ip a
lsb_release -a
lscpu
nproc
vim datos_equipos.txt
cd ..
ls -l
cd tasks/
ls -l
vim main.yml 
cd ..
cd files/
vim datos_alumno.txt 
cd ..
cd tasks/
vim main.yml 
cat main.yml 
cd ..
cd UTNFRA_SO_2do_Parcial_Rondon/
cp -r /home/vagrant/UTN-FRA_SO_Examenes/202406/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/
cp -r /home/vagrant/RTA_Examen_20241115/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)/
git status
git add .
git commit -m "Respaldando avances"
git push -u origin main
history >> "historial_2_parcial.txt"
cd ..
ls -l
cd UTNFRA_SO_2do_Parcial_Rondon/
cp -r /home/vagrant/crear_usuario.sh /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon
ls -l
git add .
git commit -m "Subiendo historial y archivo .sh"
git push -u origin main
exit
ls -l
cd UTN-FRA_SO_Examenes/.
ls -l
cd 202406
cd ansible/
ls -l
cd roles/
cd 2do_parcial/
ls -l
cd tasks/
ls -l
vim main.yml 
cd ..
cd tests/
ls -l
cat inventory 
vim inventory 
cd ..
tree
apt install tree
sudo apt install tree
tree
vim playbook.yml 
ls -l
ansible-playbook -i inventory ansible/playbook.yml
ansible-playbook -i inventory/hosts playbook.yml
ls -l
cd inventory/
ls -l
cat host
cat hosts
cd ..
vim roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory/hosts playbook.yml
ls -l /tmp/2do_parcial/alumno
cat /tmp/2do_parcial/alumno/datos_alumno.txt
vim roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory/hosts playbook.yml
cat /tmp/2do_parcial/alumno/datos_alumno.txt
vim roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory/hosts playbook.yml
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/alumno/datos_equipo.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
ls -l /tmp/2do_parcial/equipo
ls -l /tmp/2do_parcial/alumno
ls -l /tmp/2do_parcial/equipo
ls -l roles/2do_parcial/files
vim roles/2do_parcial/tasks/main.yml
ansible-playbook -i inventory/hosts playbook.yml
cat /tmp/2do_parcial/equipo/datos_equipos.txt
ls -l
cd roles/
ls -l
de 2do_parcial/
ls -l
cd 2do_parcial/
ls -l
cd files/
ls -l
cd ..
ls -l
cd tasks/
ls -l
vim main.yml 
cd ..
cd 2do_parcial/
cd f
cd files/
mv datos_equipos.txt datos_equipo.txt
ls -l
cat datos_equipo.txt 
cd ..
cd tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml
cat /tmp/2do_parcial/equipo/datos_equipo.txt
cat /tmp/2do_parcial/alumno/datos_alumno.txt
ls -l
cd roles/
ls -l
cd 2do_parcial/
ls -l
cd tasks/
vim main.yml 
cd ..
cd ...
cd ..
ls -l
cd RTA_Examen_20241115/
ls -l
vim Punto_D.sh
cat Punto_D.sh
cd ..
cd UTN-FRA_SO_Examenes/202406/ansible
cd role
cd roles/
cd 2do_parcial/tasks/
vim main.yml 
cd /home/vagrant
cd RTA_Examen_20241115/
vim Punto_D.sh
vim Punto_C.sh
cd UTN-FRA_SO_Examenes/202406/docker
cd ..
cd UTN-FRA_SO_Examenes/202406/docker
ls -l
cat Dockerfile 
cat index.html
cat imagen.sh 
cat run.sh 
docker build -t web1-rondon .
docker image list
teked@DESKTOP-O258OUR MINGW64 /c/SO/repogit/UTN-FRA_SO_Vagrant/VagrantFiles/VMParcial2 (master)
$ vagrant up
Bringing machine 'VMParcial2' up with 'virtualbox' provider...
==> VMParcial2: Checking if box 'ubuntu/jammy64' version '20240823.0.1' is up to date...
==> VMParcial2: Clearing any previously set forwarded ports...
==> VMParcial2: Clearing any previously set network interfaces...
==> VMParcial2: Preparing network interfaces based on configuration...
==> VMParcial2: Forwarding ports...
==> VMParcial2: Configuring storage mediums...
==> VMParcial2: Running 'pre-boot' VM customizations...
==> VMParcial2: Booting VM...
==> VMParcial2: Waiting for machine to boot. This may take a few minutes...
==> VMParcial2: Machine booted and ready!
==> VMParcial2: Checking for guest additions in VM...
==> VMParcial2: Setting hostname...
==> VMParcial2: Configuring and enabling network interfaces...
==> VMParcial2: Mounting shared folders...
==> VMParcial2: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> VMParcial2: flag to force provisioning. Provisioners marked to run always will still run.
teked@DESKTOP-O258OUR MINGW64 /c/SO/repogit/UTN-FRA_SO_Vagrant/VagrantFiles/VMParcial2 (master)
$ vagrant ssh
Welcome to Ubuntu 22.04.4 LTS (GNU/Linux 5.15.0-119-generic x86_64)
Expanded Security Maintenance for Applications is not enabled.
49 updates can be applied immediately.
26 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable
1 additional security update can be applied with ESM Apps.
Learn more about enabling ESM Apps service at https://ubuntu.com/esm
New release '24.04.1 LTS' available.
Run 'do-release-upgrade' to upgrade to it.
Last login: Sat Nov 16 08:57:11 2024 from 10.0.2.2
vagrant@VMParcial2:~$ exit
logout
docker tag web1-rondon danellys/web1-rondon:latest
docker push danellys/web1-rondon:latest
docker run -d -p 8080:80 danellys/web1-rondon:latest
cd RTA_Examen_20241115/
vim Punto_C.sh
cd ..
docker ps
docker exec -it <CONTAINER_ID> /bin/bash
ls /usr/share/nginx/html/index.html
sudo netstat -tuln | grep 8080
docker exec -it 7565ecf702c3 /bin/bash
cd RTA_Examen_20241115/
vim Punto_C.sh
cd ..
cd UTN-FRA_SO_Examenes/202406/bash_script/
ls -l
cat Lista_Usuarios.txt 
clave_origen=$(grep "^vagrant:" /etc/shadow | cut -d: -f2)
grep "^vagrant:" /etc/shadow | cut -d: -f2
ls -l
ls /usr/local/bin
touch /usr/local/bin/rondonAltaUser-Groups.sh
sudo touch /usr/local/bin/rondonAltaUser-Groups.sh
sudo chmod 755 /usr/local/bin/rondonAltaUser-Groups.sh
vim /usr/local/bin/rondonAltaUser-Groups.sh
sudo chmod 777 /usr/local/bin/rondonAltaUser-Groups.sh
vim /usr/local/bin/rondonAltaUser-Groups.sh
ls -l
vim /usr/local/bin/rondonAltaUser-Groups.sh
sudo /usr/local/bin/rondonAltaUser-Groups.sh
vim /usr/local/bin/rondonAltaUser-Groups.sh
sudo bash -x /usr/local/bin/rondonAltaUser-Groups.sh
vim /usr/local/bin/rondonAltaUser-Groups.sh
sudo bash -x /usr/local/bin/rondonAltaUser-Groups.sh
vim /usr/local/bin/rondonAltaUser-Groups.sh
sudo /usr/local/bin/rondonAltaUser-Groups.sh
ls -l /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls -l
cd ..
ls -l /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd bash_script/
ls *l
ls -l
cd ..
cd /UTN-FRA_SO_Examenes/202406/bash_script/
ls
ls -l /UTN-FRA_SO_Examenes
exit
ls -l /UTN-FRA_SO_Examenes
ls -l /
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd UTN-FRA_SO_Examenes/202406
cd bash_script/
ls -l
vim /usr/local/bin/rondonAltaUser-Groups.sh
/usr/local/bin/rondonAltaUser-Groups.sh
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls -l UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd ..
vim /usr/local/bin/rondonAltaUser-Groups.sh
/usr/local/bin/rondonAltaUser-Groups.sh
id 2P_202406_Prog1
id 2P_202406_Prog2
id 2P_202406_Test1
id 2P_202406_Supervisor
vim /usr/local/bin/rondonAltaUser-Groups.sh
cd RTA_Examen_20241115/
vim Punto_B.sh
ls -l
cat Punto_A.sh
cat Punto_B.sh
cat Punto_C.sh
vim Punto_C.sh
cat Punto_D.sh
cat Punto_E.sh
cd ..
cd UTNFRA_SO_2do_Parcial_Rondon/
cp -r /home/vagrant/UTN-FRA_SO_Examenes/202406/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/
cp -r /home/vagrant/RTA_Examen_20241115/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)/
mkdir -p /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)
cp -r /home/vagrant/RTA_Examen_20241115/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)/
history -a
cp $HOME/.bash_history /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon /.bash_history
cp $HOME/.bash_history /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/.bash_history
tree
git status
git add .
git commit -m "Agregando ultimas actualizaciones"
git push -u origin main
lsblk -f
sudo pvs
sudo lvs
free -h
swapon -s
df -h
ls -l /usr/local/bin/
cat /usr/local/bin/*AltaUser-Groups.sh
grep -i 2P /etc/passwd
sudo grep -iE "${vagrant}|2P" /etc/shadow
ls -l /work/
docker ps
curl localhost:8080
cat ansible/roles/2do_parcial/tasks/main.yml
cat ansible/roles/2do_parcial/templates/*
cd ..
cd UTN-FRA_SO_Examenes/202406/ansible/
ls -l
cd roles/2do_parcial/
ls -l
mv files templates
ls -l
cat templates
ls -l templates
cd tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory playbook.yml
vim main.yml 
cd roles/2do_parcial/
vim main.yml 
cd tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory playbook.yml
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory playbook.yml
vim roles/2do_parcial/tasks/main.yml 
mv templates files 
ls -l roles/2do_parcial/
mv templates files 
cd roles/2do_parcial/
mv templates files 
ls -l
cd ..
cat ansible/roles/2do_parcial/files/*
cat roles/2do_parcial/files/*
exit
cd UTN-FRA_SO_Examenes/202406/ansible/
ls -l
cat README.md 
cd ..
ls -l
cd 202311
ls -l
cat 202311_2doParcial.pdf 
ls -l
cd ..
ls -l
cd 202311_Recu/
ls -l
reset; ansible-playbook -i inventory/hosts playbook.yml
ls -l
cd ansible/
ls -l
cat README.md 
cd roles/
ls -l
cd multi_Pruebas/
ls -l
cd tasks/
ls -l
cat main.yml 
cat prueba_202311_Recu2doParcial.yml 
vim prueba_202311_Recu2doParcial.yml 
cd ..
cd templates/
ls -l
cat template_01.j2 
vim template_01.j2 
cd ..
ls -l
cd tasks/
ls -l
vim prueba_202311_Recu2doParcial.yml 
cd ..
cd templates/
ls -l 
vim datos_alumno.j2
vim datos_equipo.j2
ls -l
cd ..
ls -l
ansible-playbook -i inventory/hosts playbook.yml
ls -l ~/UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_Pruebas/
cd ..
ls -l
cd ..
ls -l
ansible-playbook -i inventory/hosts playbook.yml
ls -l /tmp/2do_parcial/
ls -l
cd inventory/
ls -l
cat host
cat hosts
/home/vagrant/UTN-FRA_SO_Examenes/202311_Recu/ansible/prueba_202311_2doParcial.yml
cd ..
/home/vagrant/UTN-FRA_SO_Examenes/202311_Recu/ansible/prueba_202311_2doParcial.yml
ls -l
ls -l roles/
ls -l roles/multi_Pruebas/
ls -l roles/multi_Pruebas/tasks/
vim roles/multi_Pruebas/tasks/prueba_202311_Recu2doParcial.yml 
vim roles/multi_Pruebas/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml
ls -l /tmp/2do_parcial/
cat /home/vagrant/UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_pruebas/tasks/prueba_202311_2doParcial.yml
ls -l
cd roles/
ls -l
cd multi_Pruebas/
ls -l
cd tasks/
ls -l
cat /UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_Pruebas/tasks/prueba_202311_Recu2doParcial.yml
cat UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_Pruebas/tasks/prueba_202311_Recu2doParcial.yml
cat ~/UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_Pruebas/tasks/prueba_202311_Recu2doParcial.yml
vim roles/multi_Pruebas/tasks/main.yml 
vim main.yml 
cat /home/vagrant/UTN-FRA_SO_Examenes/202311_Recu/ansible/roles/multi_Pruebas/tasks/prueba_202311_2doParcial.yml
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml
ls -l /tmp/2do_parcial/
ls -l /tmp/2do_parcial/alumno/
cat /tmp/2do_parcial/alumno/datos_alumno.txt 
ls -l /tmp/2do_parcial/equipo/
ls -l roles/multi_Pruebas/templates/
vim roles/multi_Pruebas/templates/datos_equipo.j2 
ansible-playbook -i inventory/hosts playbook.yml
ls -l /tmp/2do_parcial/equipo
cat /tmp/2do_parcial/equipo/datos_equipo.txt
ls -l
cd ..
ls -l
cd Directorio_Home/
ls -l
cd ..
cd RTA_Examen_20241115/
ls -l
vim Punto_D.sh
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406/ansible/
ls -l
cd roles/
ls -l
cd 2do_parcial/
ls -l
mkdir tmplates
ls -l
rm tests/
rmdir tmplates/
mkdir templates
cd templates/
vim datos_alumno.j2
vim datos_equipo.j2
ls -l
cd ..
cd tasks/
ls -l
vim main.yml 
cd ..
cd v..
cd ..
ansible-playbook -i inventory/hosts playbook.yml 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml 
vim roles/2do_parcial/tasks/main.yml 
ansible-playbook -i inventory/hosts playbook.yml 
cd ..
vim RTA_Examen_20241115/Punto_D.sh
history -a
cd UTNFRA_SO_2do_Parcial_Rondon/
cp -r /home/vagrant/UTN-FRA_SO_Examenes/202406/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/
mkdir -p /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)
cp -r /home/vagrant/RTA_Examen_20241115/* /home/vagrant/UTNFRA_SO_2do_Parcial_Rondon/RTA_Examen_$(date +%Y%m%d)/
history -a
$HOME/.bash_history
cd ..
$HOME/.bash_history
cd UTNFRA_SO_2do_Parcial_Rondon/
