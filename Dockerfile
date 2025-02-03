# Usar Node.js 20 como base
FROM node:20-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de configuración
COPY package.json yarn.lock ./

# Instalar dependencias
RUN yarn install --frozen-lockfile

# Copiar el código fuente
COPY . .

# Construir la aplicación
RUN yarn build

# Exponer el puerto (ajusta según tus necesidades)
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["yarn", "start"]