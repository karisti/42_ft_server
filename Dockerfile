# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: karisti- <karisti-@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/03 21:21:51 by karisti-          #+#    #+#              #
#    Updated: 2021/11/26 18:57:41 by karisti-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Base image
FROM debian:buster


# Update package list, upgrate and Install needed packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
        nginx \
        mariadb-server \
        wget \
        php7.3 \
        php-fpm \
        php-cli \
        php-mbstring \
        php-mysql


# NGINX config
COPY srcs/nginx/nginx.conf /etc/nginx/sites-available/localhost
RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost && \
    rm /var/www/html/index.nginx-debian.html

# PHPMYADMIN config
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-english.tar.gz && \
    tar xf phpMyAdmin-4.9.5-english.tar.gz
RUN mv phpMyAdmin-4.9.5-english /var/www/html/phpmyadmin && \
    rm -rf phpMyAdmin-4.9.5-english.tar.gz
COPY srcs/phpmyadmin/config.inc.php /var/www/html/phpmyadmin
COPY srcs/phpmyadmin/phpmyadmin_config.sql ./
RUN service mysql start && \
    mysql -u root mysql < phpmyadmin_config.sql && \
    rm phpmyadmin_config.sql

# WORDPRESS CONFIG
COPY srcs/wordpress/wordpress-5.4.2.tar.gz srcs/wordpress/wordpress_config.sql srcs/wordpress/wordpress.sql ./
RUN tar xf wordpress-5.4.2.tar.gz && \
    mv wordpress /var/www/html/ && \
    rm -rf wordpress-5.4.2.tar.gz
COPY srcs/wordpress/wp-config.php /var/www/html/wordpress/
RUN service mysql start && \
    mysql -u root mysql < wordpress_config.sql && \
    mysql wordpress -u root < wordpress.sql && \
    rm wordpress_config.sql wordpress.sql


# SSL certificate
RUN openssl req -x509 -nodes -days 365 -subj '/C=ES/ST=Spain/L=Madrid/O=karisti-/OU=IT/CN=karisti-/emailAddress=karisti-@student.42madrid.com' -newkey rsa:2048 -keyout /etc/ssl/certs/nginx_localhost.key -out /etc/ssl/certs/nginx_localhost.crt


# Copy scripts
COPY srcs/*.sh ./


# Giving nginx user-group rights over page files
RUN chown -R www-data:www-data /var/www/html/*


# Exposing ports of container
EXPOSE 80 443


# Commands that are executed when container is ran
CMD bash start.sh
