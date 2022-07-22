FROM php:7.3-alpine3.9

# The application will be copied in /home/application and the original document root will be replaced in the apache configuration 
WORKDIR /var/www/html
COPY . /var/www/html

# Custom Document Root
ENV APACHE_DOCUMENT_ROOT ${APACHE_DOCUMENT_ROOT:-/var/www/html/public}

# Concatenated RUN commands
RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install gd && apk del libpng-dev
RUN apk add --no-cache libzip-dev && docker-php-ext-configure zip --with-libzip=/usr/include && docker-php-ext-install zip
RUN apk add --update git apache2 php7-fileinfo php7-apache2 php7-gd php7-intl php7-xsl php7-zip php7-mbstring php7-session php7-json php7-pdo php7-openssl php7-tokenizer php7-pdo php7-pdo_mysql php7-pdo_pgsql php7-xml php7-simplexml\
    && chmod -R 775 /var/www/html \
    && chown -R apache:apache /var/www/html \
    && mkdir -p /run/apache2 \
    && sed -i '/LoadModule rewrite_module/s/^#//g' /etc/apache2/httpd.conf \
    && sed -i '/LoadModule session_module/s/^#//g' /etc/apache2/httpd.conf \
    && sed -ri -e 's!/var/www/localhost/htdocs!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/httpd.conf \
    && sed -i 's/AllowOverride\ None/AllowOverride\ All/g' /etc/apache2/httpd.conf \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pdo pdo_mysql \
    && rm  -rf /tmp/* /var/cache/apk/*

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    rm -rf composer-setup.php

RUN composer update

# Launch the httpd in foreground
CMD rm -rf /run/apache2/* || true && /usr/sbin/httpd -D FOREGROUND
