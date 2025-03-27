# Michel Dellabeneta
# Estágio de Build
FROM node:23.9.0 AS builder
WORKDIR /app
COPY kube-news/src/package*.json ./
RUN npm install --omit=dev  # Remove devDependencies
COPY . .

# Estágio Final Distroless com imagem Oficial Chainguard
FROM cgr.dev/chainguard/node
WORKDIR /app
COPY --from=builder /app .
EXPOSE 8080
CMD ["server.js"]