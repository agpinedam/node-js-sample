# Usa una imagen base de Node.js oficial
FROM node:18-alpine

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos de configuración y dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install --production

# Copia el resto de la aplicación
COPY . .

# Expone el puerto en el que la app estará corriendo
EXPOSE 3000

# Define el comando por defecto para iniciar la aplicación
CMD ["npm", "start"]
