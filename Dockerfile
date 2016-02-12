FROM studionone/apache-php5:base

# Install base tooling
RUN apt-get update
RUN sudo apt-get -y install php5-intl vim git

# Needed for add-apt-repository to work due to UTF-8
RUN locale-gen en_AU.UTF-8
ENV LANG C.UTF-8

# Code
ADD code /var/www

RUN usermod -u 1000 www-data
RUN mkdir -p /var/www/app/cache /var/www/app/logs
RUN chown -R www-data:www-data /var/www/app/cache
RUN chown -R www-data:www-data /var/www/app/logs

# Node
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs

RUN npm install vue
RUN npm install requirejs

WORKDIR /var/www

