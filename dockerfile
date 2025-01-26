# Verwende das Basisimage
FROM lscr.io/linuxserver/swag:3.0.1

# Kopiere die Konfigurationsdateien in den Container
COPY ./confs/*.conf /nginx-configs/
COPY init-nginx /etc/s6-overlay/s6-rc.d/init-nginx/run
# Berechtigungen vergeben
RUN chmod +x //etc/s6-overlay/s6-rc.d/init-nginx/run