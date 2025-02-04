FROM node:18-alpine 

WORKDIR /app

# Copiamos los archivos a /app, no a la raíz /
COPY package*.json ./
RUN npm install

# Copiamos todo el código a /app, no a la raíz /
COPY . .
RUN npm run build

# Configuración necesaria para Next.js en Docker

ENV PORT 3000
ENV HOSTNAME "0.0.0.0"

EXPOSE 3000

CMD ["npm", "start"]