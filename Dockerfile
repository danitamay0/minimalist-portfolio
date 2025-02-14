# Usa una imagen base de Node.js
FROM node:lts-alpine

# Configurar el directorio de trabajo
WORKDIR /app

# Copiar archivos de la aplicación
COPY . ./

# Instalar dependencias y construir la aplicación
RUN npm ci && npm run build

# Instalar un servidor estático ligero
RUN npm install -g http-server

# Exponer el puerto para Railway
EXPOSE 8080

# Iniciar el servidor para servir la carpeta dist/
CMD ["http-server", "dist", "-p", "8080"]
