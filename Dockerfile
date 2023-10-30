# Usa Alpine Linux come immagine di base
FROM alpine:latest

# Aggiorna i pacchetti e installa Python e Curl
RUN apk update && \
    apk add --no-cache python3 curl
