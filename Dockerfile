FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx php-fpm php-mysql curl
COPY wptest.conf /etc/nginx/conf.d/wptest.conf
COPY wp-setup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wp-setup.sh
RUN /usr/local/bin/wp-setup.sh && echo "Betik basariyla calisti." || echo "Betikte hata olustu: $(cat /var/log/docker.log)"
EXPOSE 80
CMD php-fpm8.3 & \
    nginx -g 'daemon off;'