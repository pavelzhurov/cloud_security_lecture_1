FROM docker.io/nginx
RUN chmod -R 777 /etc/nginx/ && chmod -R 777 /var/cache/
COPY docker_example /usr/share/nginx/html
