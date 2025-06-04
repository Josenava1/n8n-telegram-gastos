FROM n8nio/n8n:latest

# No cambiar de usuario, n8n ya maneja esto
# USER root - NO NECESARIO

# Variables de entorno
ENV N8N_PORT=10000
ENV NODE_ENV=production
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-telegram-gastos.onrender.com/
ENV N8N_DIAGNOSTICS_ENABLED=false
ENV N8N_VERSION_NOTIFICATIONS_ENABLED=false

# Exponer puerto
EXPOSE 10000

# El comando start ya está incluido en la imagen base
# No necesitamos CMD
