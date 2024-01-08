#!/bin/bash

docker run -d -ti -p 8081:80 --name static-site hometask-image
docker cp ./index.html static-site:/var/www/html

#docker run -dit --rm -p 8081:80 -v 'pwd'/index.html:/var/www/html/index.html hometask-image:solution