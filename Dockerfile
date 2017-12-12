FROM php:7.1.9-apache

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip libpng-dev imagemagick git netcat \
  && rm -rf /var/lib/apt/lists/*
  
RUN docker-php-ext-install mysqli pdo_mysql gd

RUN git clone https://github.com/phpbb/phpbb.git

WORKDIR phpbb
RUN git checkout 3.2.x

WORKDIR phpBB
RUN ../composer.phar install

WORKDIR ..

ADD wait-for-mysql.sh .
RUN chmod +x ./wait-for-mysql.sh

ENTRYPOINT ["./wait-for-mysql.sh"]