FROM docker.io/nginx
RUN chmod -R 777 /etc/nginx/ && chmod -R 777 /var/cache/ && sed -i 's/80/8888/g' /etc/nginx/conf.d/default.conf && chmod 777 /var/run/nginx.pid
COPY docker_example /usr/share/nginx/html
