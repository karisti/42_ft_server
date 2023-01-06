# Project: ft_server (Grade: XX/100)

## Instructions
#### Description
This topic is intended to introduce you to system administration. It will make you aware
of the importance of using scripts to automate your tasks. For that, you will discover
the "docker" technology and use it to install a complete web server. This server will run
multiples services: Wordpress, phpMyAdmin, and a SQL database.

#### General instructions
- You must place all the necessary files for the configuration of your server in a folder called srcs.
- Your Dockerfile file should be at the root of your repository. It will build your container. You can´t use docker-compose.
- All the necessary files for your WordPress website should be in the folder srcs.

#### Mandatory part
- You must set up a web server with Nginx, in only one docker container. The container OS must be debian buster.
- Your web server must be able to run several services at the same time. The services will be a WordPress website, phpMyAdmin and MySQL. You will need to make sure your SQL database works with the WordPress and phpMyAdmin.
- Your server should be able to use the SSL protocol.
- You will have to make sure that, depending on the url, your server redirects to the correct website.
- You will also need to make sure your server is running with an autoindex that must be able to be disabled.

## Solution
### Explanation

### Usage
Build image:
```docker build -t ft_server .```

Run image:
```docker run -d -p 80:80 -p 443:443 ft_server```

Go to:
- http://localhost/phpmyadmin [phpmyadmin , phpmyadmin | wordpress , wordpress]
- http://localhost/wordpress [karisti- , karisti-]

### Resources
- https://docs.docker.com/engine/reference/builder/
- https://pceuropa.net/blog/nginx-phpmyadmin-configuration-localhost/
- https://www.youtube.com/watch?v=_LQv96MdtCk
- https://www.youtube.com/watch?v=ZwL42zit_Eg
- https://www.youtube.com/watch?v=206LwaD6ZBE
- https://kifarunix.com/install-wordpress-5-with-nginx-on-debian-10-buster/
- https://medium.com/@codingwithmanny/custom-wordpress-docker-setup-8851e98e6b8
- https://www.digitalocean.com/community/tutorials/how-to-create-an-ssl-certificate-on-nginx-for-ubuntu-14-04
- https://www.openssl.org/docs/manmaster/man1/openssl-x509.html

### Tools
- https://github.com/alexandregv/42toolbox/blob/master/init_docker.sh

#DON´T COPY, LEARN! -42
