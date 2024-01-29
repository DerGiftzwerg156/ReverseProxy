# Verwende das Basisimage
FROM lscr.io/linuxserver/swag:latest

# Kopiere die Konfigurationsdateien in den Container
COPY ./confs/*.conf /nginx-configs/
COPY init-nginx /etc/s6-overlay/s6-rc.d/init-nginx/run
