#!/bin/sh
export DOCKER_DB_NAME="db"
export DOCKER_ADMIN_NAME="admin"
export DB_PASSWORD="password"
export DB_DBNAME="database"
docker-compose up -d