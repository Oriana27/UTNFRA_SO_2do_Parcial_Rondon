#!/bin/bash
sudo useradd -m -s /bin/bash -c "Creando Usuario" rondon
# Establecer la contraseña del usuario
echo "rondon:rondon" | sudo chpasswd
echo "Usuario 'rondon' creado con éxito con la contraseña 'rondon'."
