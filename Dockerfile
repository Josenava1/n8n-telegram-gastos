FROM n8nio/n8n:latest

USER root

# Instalar dependencias adicionales si es necesario
RUN apk add --no-cache \
    python3 \
    py3-pip \
    tzdata

# Configurar timezone para México
ENV TZ=America/Mexico_City
RUN cp /usr/share/zoneinfo/America/Mexico_City /etc/localtime

USER node

# Variables de entorno para n8n
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV N8N_PUSH_BACKEND=websocket
ENV N8N_DIAGNOSTICS_ENABLED=false
ENV N8N_HIRING_BANNER_ENABLED=false
ENV N8N_VERSION_NOTIFICATIONS_ENABLED=false

# Crear directorio para datos
RUN mkdir -p /home/node/.n8n

# Exponer puerto
EXPOSE 10000

# Comando por defecto
CMD ["n8n", "start"]
