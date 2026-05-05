# Usa Node oficial
FROM node:20

# Carpeta de trabajo
WORKDIR /app

# Copia package.json
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia todo el proyecto
COPY . .

# Expone puerto Angular
EXPOSE 4200

# Ejecuta Angular
CMD ["npm", "run", "start", "--", "--host", "0.0.0.0"]