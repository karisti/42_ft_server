#!/bin/bash

sed -i 's/autoindex on;/~~/g; s/autoindex off;/autoindex on;/g; s/~~/autoindex off;/g' /etc/nginx/sites-available/localhost
service nginx reload
