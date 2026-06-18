FROM nginx:alpine

# Copiar config de nginx con soporte de video streaming
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar archivos de la invitación
COPY index.html /usr/share/nginx/html/index.html
COPY boda-video.mp4 /usr/share/nginx/html/boda-video.mp4

# Opcional: si tienes foto y música, descomenta estas líneas:
# COPY foto-pareja.jpg /usr/share/nginx/html/foto-pareja.jpg
# COPY musica-boda.mp3 /usr/share/nginx/html/musica-boda.mp3

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
