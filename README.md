# Postgresql in Docker

## Introduction

In our server, we can deploy `postgres` via `docker` image quickly.

> **Caution**
>
> This document is written for OS: Ubuntu and MAC OS X. Other OS needs to reference other commands.

## Ingredients

-   `docker-compose.yml` : options to deploy postgres in `.yml`
-   `run.sh` : run script and environments

## Get Started

Go to your project directory where you want to install postgres.

In this case, we set `home` directory as project directory

```bash
cd ~
```

Now, check that we can use `docker-compose` command.

```bash
docker-compose --version
```

If you do not have the command, the output would recommend you the install command.

Or you can use the following command to install:

```bash
sudo apt install docker-compose
```

Make a new directory to deal with docker.

```bash
mkdir docker && cd docker
```

Now, git clone our repository.

```bash
git clone https://github.com/hubts/infra-postgres-deploy-docker.git
```

After downloading, insert your information to `run.sh`.

```bash
vim run.sh
```

-   **DB_CONTAINER_NAME** : Docker container name for DB
-   **DB_USERNAME** : DB connection username as ID
-   **DB_PASSWORD** : DB connection password
-   **DB_DBNAME** : Database name, not classification, your customized name
-   **DB_PORT** : Output port number for DB
-   **ADMIN_CONTAINER_NAME** : Docker container name for Admin
-   **ADMIN_PORT** : Output port number for Admin

Before running, we should add the execution permission.

```bash
chmod +x run.sh
```

Now, run the script `run.sh`.

```bash
./run.sh
```

After the sequential running process, such as docker image install and loading, two docker containers would be started. Check the status via the following command.

```bash
docker -ps
```

## TroubleShooting

If you have error in the following:

```bash
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json: dial unix /var/run/docker.sock: connect: permission denied
```

Change the user permission via running this command:

```bash
sudo chmod 666 /var/run/docker.sock
```
