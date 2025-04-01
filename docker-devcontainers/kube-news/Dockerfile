# Estágio de build
FROM node:22.14.0-alpine3.21 AS build-stage
WORKDIR /app
COPY src/package*.json ./
RUN npm ci --omit=dev
COPY src/ .

# Estágio de produção
FROM node:22.14.0-alpine3.21
WORKDIR /app
COPY --from=build-stage /app .  
EXPOSE 8080
CMD ["node", "server.js"]