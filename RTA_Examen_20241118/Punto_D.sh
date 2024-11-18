#!/bin/bash

# Crear datos_alumno.j2 con contenido fijo
if [ ! -f ./roles/multi_Pruebas/templates/datos_alumno.j2 ]; then
    cat <<EOL > ./roles/multi_Pruebas/templates/datos_alumno.j2
Nombre: Danellys Oriana
Apellido: Rondon Peña
Division: 115
EOL
    echo "Archivo 'datos_alumno.j2' creado exitosamente."
else
    echo "El archivo 'datos_alumno.j2' ya existe."
fi

# Crear datos_equipo.j2 con contenido fijo 
if [ ! -f ./roles/multi_Pruebas/templates/datos_equipo.j2 ]; then
    cat <<EOL > ./roles/multi_Pruebas/templates/datos_equipo.j2
IP: 192.168.56.3
Distributor ID: Ubuntu
Description: Ubuntu 22.04.4 LTS
Release: 22.04
Codename: jammy
Cantidad de cores: 2
EOL
    echo "Archivo 'datos_equipo.j2' creado exitosamente."
else
    echo "El archivo 'datos_equipo.j2' ya existe."
fi

# Editar el archivo prueba_202311_2doParcial.yml para las tareas del role
cd ./roles/multi_Pruebas/tasks || exit 1

cat > prueba_202311_2doParcial.yml <<EOL
---
- name: Crear estructura de directorios
  file:
    path: /tmp/2do_parcial/{{ item }}
    state: directory
    mode: '0755'
  with_items:
    - alumno
    - equipo

- name: Generar archivo datos_alumno.txt
  template:
    src: datos_alumno.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0644'

- name: Generar archivo datos_equipo.txt
  template:
    src: datos_equipo.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0644'

- name: Configurar sudoers para el grupo 2PSupervisores
  copy:
    dest: /etc/sudoers.d/2PSupervisores
    content: |
      %2PSupervisores ALL=(ALL) NOPASSWD: ALL
    mode: '0440'
 become: true  # Esto otorga privilegios de root a la tarea
EOL

echo "Archivo prueba_202311_2doParcial.yml configurado exitosamente."

# Ejecutar el playbook automáticamente con la respuesta predeterminada
cd ../../.. || exit 1
echo "202311_2doParcial" | ansible-playbook -i inventory/hosts playbook.yml || { echo "Error al ejecutar el playbook."; exit 1; }

echo "Ejecución del playbook finalizada."

