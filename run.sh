#!/bin/sh

# Database
export DB_CONTAINER_NAME="postgres_db"
export DB_PASSWORD="password"
export DB_DBNAME="database"
export DB_USERNAME="postgres"
export DB_PORT=5432

# Admin
export ADMIN_CONTAINER_NAME="postgres_admin"
export ADMIN_PORT=8080

# Script
docker-compose up -d