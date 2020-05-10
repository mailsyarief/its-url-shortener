FROM mailsyarief/its-url-shortener:development

WORKDIR /var/www/html
RUN ls -a -l
COPY /code /var/www/html
RUN ls -a -l
RUN chown -R www-data:www-data /var/www/html/storage
RUN a2enmod rewrite

RUN composer update


