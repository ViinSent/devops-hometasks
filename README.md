# Домашние задания по курсу DevOps
- ДЗ №1.1 Создание одной виртуальной машины через shell (http://localhost:8080 и http://localhost:8081)
- ДЗ №1.2 Созадние двух виртуальных машин через shell   (http://192.168.33.10 и http://192.168.33.12)
- ДЗ №2.1 Создание двух виртуальных машин через Ansible (http://localhost:8080 и http://localhost:8081)
- ДЗ №2.2 Создание трех виртуальных машин через Ansible (http://192.168.33.10 и http://192.168.33.12) 
nginx (http://192.168.33.16:8081 и http://192.168.33.16:8082)
- ДЗ №3-4 Создание трех виртуальных машин Centos, настройка Puppet (Master http://192.168.50.10) 
Slave1 (http://192.168.50.20) Slave2 (http://192.168.50.30)
- ДЗ №5-6 Создание машин Jenkins (http://192.168.50.50:8080), Nexus (http://192.168.50.65:8081), 
stage (http://192.168.50.55:8888), production (http://192.168.50.60:8888), настройка и запуск WCG
- ДЗ №7 Создание Docker-образов dynamic_site (http://192.168.50.70), static_site (http://192.168.50.75)
- ДЗ №8 Создан Jenkinsfile в котором написан pipeline сборки, тестирования и запуска WCG на STAGING 
и PRODUCTION серверах через NEXUS
- ДЗ №9 Создан Docker-compose два образа Jenkins через Dockerfile и Nexus - Dockerfile, Ansible-role
- ДЗ №10 Создан .github/workflows/project.yaml, который используя Dockerfile (в корне) создает образ и загружает его в GitHub registry (ghrc.io)
- ДЗ №11 Созданы Deploy, Service, Ingress, которые образ из (ghrc.io) запускают на локальной машине через k8s
- ДЗ №12 Создан Helm Chart, который запускает файлы из ДЗ №11, значения в файле values
- ДЗ №13 Переписано ДЗ№11 в terraform коммит осуществляется посредством провайдера GitHub
