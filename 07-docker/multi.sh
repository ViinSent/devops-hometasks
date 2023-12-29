#!/bin/bash

# Сборка Docker-образа из Dockerfile.multi
docker build -t word-cloud-image -f Dockerfile.multi .
