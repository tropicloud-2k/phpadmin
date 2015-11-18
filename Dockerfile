FROM php:5.6-apache
RUN apt-get update \
  && apt-get install -y unzip \
  && docker-php-ext-install pdo pdo_mysql \
  && curl -sL http://www.adminer.org/latest-en.php > index.php \
  && curl -sL https://github.com/interconnectit/Search-Replace-DB/archive/master.zip > master.zip \
  && unzip master.zip && rm -f master.zip && mv *-master master

CMD ["php-fpm"]

