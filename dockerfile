# Verwende das Basisimage
FROM lscr.io/linuxserver/swag:latest

# Kopiere die Konfigurationsdateien in den Container
COPY ./confs/*.conf /conf/nginx/site-confs/
