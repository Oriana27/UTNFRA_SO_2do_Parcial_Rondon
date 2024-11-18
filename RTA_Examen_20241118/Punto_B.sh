#!/bin/bash

# Comprobamos que el archivo exista directamente en la ruta especificada
[ ! -f "UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt" ] && { echo "Archivo no encontrado: UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
" ; exit 1; }

# Crear grupos, directorios y usuarios usando awk para procesar el archivo

awk -F, '{
  # Crear grupos si no existen
  system("sudo groupadd " $2 " 2>/dev/null");

  # Crear directorios home si no existen
  system("sudo mkdir -p " $3);

  # Crear usuario y asignar contraseña de vagrant
  system("sudo useradd -m -s /bin/bash -g " $2 " -d " $3 " " $1 " && sudo usermod --password $(sudo grep vagrant /etc/shadow | awk -F: '\''{print $2}'\'') " $1);

  # Asignar permisos al directorio
  system("sudo chown " $1 ":" $2 " " $3);

# Crear usuario y asignar contraseña de vagrant
  system("sudo useradd -m -s /bin/bash -g " $2 " -d " $3 " " $1 " && sudo usermod --password $(sudo grep vagrant /etc/shadow | awk -F: '\''{print $2}'\'') " $1);

  # Asignar permisos al directorio
  system("sudo chown " $1 ":" $2 " " $3);
}' UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt

echo "Verificando la creacion de usuarios"
awk -F, '{print "id " $1}' UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt | bash

