# 42_ft_server

## Description
This project is an introduction to system administration. We will discover the "docker" technology and use it to install a complete web server. This server will run multiples services: Wordpress, phpMyAdmin, and a SQL database. Docker-compose and public docker images are not allowed. [inception](https://github.com/karisti/42_inception "inception") is the project that follows this one.

## Lessons
- Docker: creation of custom images
- Nginx web server configuration with and without SSL
- Wordpress website installation and configuration
- MariaDB database installation and configuration
- Phpmyadmin installation and configuration

## Prerequisites
- Docker

## Usage
- Run ```run_server.sh```
- Open http://localhost/phpmyadmin [phpmyadmin , phpmyadmin | wordpress , wordpress]
- Open http://localhost/wordpress [karisti- , karisti-]

## Resources
- [Dockerfile basics](https://docs.docker.com/engine/reference/builder/ "Dockerfile basics")
- [Wordpress installation](https://kifarunix.com/install-wordpress-5-with-nginx-on-debian-10-buster/ "Wordpress installation")
- [Custom WordPress Docker Setup](https://codingwithmanny.medium.com/custom-wordpress-docker-setup-8851e98e6b8 "Custom WordPress Docker Setup")
- [Nginx Phpmyadmin configuration](https://pceuropa.net/blog/nginx-phpmyadmin-configuration-localhost/ "Nginx Phpmyadmin configuration")
- [How To Create an SSL Certificate](https://www.digitalocean.com/community/tutorials/how-to-create-an-ssl-certificate-on-nginx-for-ubuntu-14-04 "How To Create an SSL Certificate")
- [openssl-x509](https://www.openssl.org/docs/manmaster/man1/openssl-x509.html "openssl-x509")
- [Certbot](https://www.youtube.com/watch?v=206LwaD6ZBE "Certbot ")
- [Configurando Nginx - PARTE 2: LEMP: PHP + MySQL [YouTube]](https://www.youtube.com/watch?v=ZwL42zit_Eg "Configurando Nginx - PARTE 2: LEMP: PHP + MySQL [YouTube]")
- [Instalando y configurando Nginx - PARTE 1: Virtual Hosts [YouTube]](https://www.youtube.com/watch?v=_LQv96MdtCk "Instalando y configurando Nginx - PARTE 1: Virtual Hosts [YouTube]")

## Tools
- https://github.com/alexandregv/42toolbox/blob/master/init_docker.sh
