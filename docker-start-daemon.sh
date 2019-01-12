#!/bin/bash

# Stops the script, if an error occurred.
set -e

docker-compose build

docker-compose up -d
