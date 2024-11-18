#!/bin/bash

# Cambiar al directorio de trabajo
cd UTN-FRA_SO_Examenes/202406/docker || exit 1

# Crear el archivo index.html
echo "Creando archivo index.html"
cat > index.html <<EOL
<div>
  <h1> Sistemas Operativos - UTNFRA </h1></br>
  <h2> 2do Parcial - Noviembre 2024 </h2> </br>
  <h3> Danellys Oriana Rondon Peña</h3>
  <h3> División: 115</h3>
</div>
EOL

# Crear el Dockerfile
echo "Creando archivo Dockerfile"
cat > Dockerfile <<EOL
# Usar la imagen oficial de Nginx como base
FROM nginx:latest

# Copiar el archivo index.html al contenedor en la ruta adecuada para Nginx
COPY index.html /usr/share/nginx/html/index.html
EOL

# Construir la imagen Docker
echo "Construyendo la imagen Docker"
docker build -t web1-rondon .

# Pushear la imagen al repositorio Docker Hub
echo "Pusheando la imagen al Docker Hub"
docker tag web1-rondon danellys/web1-rondon:latest
docker push danellys/web1-rondon:latest

# Ejecutar el contenedor desde la imagen pusheada
echo "Ejecutando el contenedor"
docker run -d -p 8080:80 danellys/web1-rondon:latest

echo "El proceso ha finalizado con exito"
