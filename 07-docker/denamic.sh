#!/bin/bash

# Сборка Docker-образа с именем hometask-image
docker build -t hometask-image -f Dockerfile.simple .

# Запуск контейнера с пробросом порта 80 на порт 8080 хост-системы
docker run -p 8080:80 hometask-image
