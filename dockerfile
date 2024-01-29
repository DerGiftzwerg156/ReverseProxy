# Verwende das Basisimage
FROM lscr.io/linuxserver/swag:latest

# Kopiere die Konfigurationsdateien in den Container
COPY ./confs/*.conf /nginx-configs/
COPY init-nginx /etc/s6-overlay/s6-rc.d/init-nginx/run
# Berechtigungen vergeben
CMD chown 1000:1000 -R /etc/s6-overlay/s6-rc.d/init-nginx
CMD chown 1000:1000 -R /nginx-configs/*
