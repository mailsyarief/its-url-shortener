FROM mailsyarief/its-url-shortener:development

WORKDIR /var/www/mysite
RUN ls -a -l
COPY /code /var/www/mysite
RUN ls -a -l
RUN chown -R www-data:www-data /var/www/mysite/storage

RUN composer update