FROM mailsyarief/its-url-shortener:development

WORKDIR /var/www/html
RUN ls -a -l
COPY -rp /code /var/www/html
RUN ls -a -l
RUN a2enmod rewrite

RUN composer update


