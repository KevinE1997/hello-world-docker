# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación
COPY . .

# Expone el puerto que usa la aplicación
EXPOSE 8080

# Comando para correr la aplicación
CMD [ "npm", "start" ]
