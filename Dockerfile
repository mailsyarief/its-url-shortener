FROM mailsyarief/its-url-shortener:development

WORKDIR /var/www/html

COPY /code /var/www/html

RUN chown -R www-data:www-data /var/www

RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

COPY /code/docker/apache /etc/apache2/sites-available

RUN composer install --no-cache

RUN chown -R www-data:www-data /var/www/html
RUN a2enmod rewrite
