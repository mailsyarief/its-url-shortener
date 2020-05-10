FROM mailsyarief/its-url-shortener:development

WORKDIR /var/www/html

COPY /code /var/www/html

RUN composer update

RUN chown -R www-data:www-data /var/www/html
RUN a2enmod rewrite
