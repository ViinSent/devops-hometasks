#!/bin/bash

# Сборка Docker-образа из dockerfile.multi
docker run -d -ti --name wcg-image -f dockerfile.multi .

