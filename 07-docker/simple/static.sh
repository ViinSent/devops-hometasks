#!/bin/bash

# Сборка Docker-образа с именем hometask-image
docker build -t hometask-image -f dockerfile.simple .

# Запуск контейнера с пробросом порта 80 на порт 8081 хост-системы
docker run -p 8081:80 hometask-image
