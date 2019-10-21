FROM docker.io/nginx
COPY default.conf /etc/nginx/conf.d/
RUN chmod -R 777 /etc/nginx/ && chmod -R 777 /var/cache/ && sed -i 's/80/8888/g' /etc/nginx/conf.d/default.conf && chmod 777 /var/run/ 
COPY docker_example /usr/share/nginx/html
