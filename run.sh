#!/bin/sh
export DB_CONTAINER_NAME="postgres_db"
export ADMIN_CONTAINER_NAME="postgres_admin"
export DB_PASSWORD="password"
export DB_DBNAME="database"
export DB_USERNAME="postgres"
export DB_PORT=5432
export ADMIN_PORT=8080
docker-compose up -d
