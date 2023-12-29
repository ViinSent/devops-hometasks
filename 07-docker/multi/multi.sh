#!/bin/bash

# Сборка Docker-образа из dockerfile.multi
docker build -t word-cloud-image -f dockerfile.multi .
