docker run -it -d --name php-nginx \
-v $(pwd)/config/fpm-pool.conf:/etc/php7/php-fpm.d/www.conf \
-v $(pwd)/config/nginx.conf:/etc/nginx/nginx.conf \
-v $(pwd)/config/php.ini:/etc/php7/conf.d/zzz_custom.ini \
-v $(pwd)/config/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf \
-v $(pwd)/src:/var/www/html \
-p 80:8080 \
trafex/alpine-nginx-php7

