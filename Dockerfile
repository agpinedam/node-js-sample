# Usa una imagen base oficial de Node.js
FROM node:16-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos necesarios para instalar dependencias
COPY package*.json ./

# Instala las dependencias necesarias
RUN npm install --production

# Copia el resto de los archivos del proyecto
COPY . .

# Expone el puerto en el que la aplicación escucha
EXPOSE 3000

# Define el comando de inicio
CMD ["npm", "start"]
