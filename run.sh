#!/bin/sh
export DB_PASSWORD="password"
export DB_DBNAME="database"
export DB_USERNAME="postgres"
docker-compose up -d
