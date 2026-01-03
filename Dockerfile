# ---------- Build ----------
FROM node:16 AS build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# ---------- Nginx ----------
FROM nginx:alpine

# OJO con el nombre del proyecto
COPY --from=build /app/dist/app-sistema-venta /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
