# docker_postgres_14_cron
Creates a new Docker image based on Postgres:14.7 and adds `pg_cron` support. The logic is the same for almost all Postgres versions. You could use it with Postgres-13, Postgres-15 as well. Don't forget to change Postgres version numbers in `Dockerfile`, and `build.sh`.

## How to install
* use `build.sh` to create the image
* create an `.env` file along with `docker-compose.yml`
* add ```POSTGRES_CRON_DB=cron_db_name``` to the `.env`
* add `POSTGRES_CRON_DB` to the environment section in `docker-compose.yml`
* refer the image in `docker-compose.yml` 
```
version: '3.6'
services:
  postgres:
    image: postgres_cron:14.7
    ...
    ...
    ..
  environment:
    POSTGRES_CRON_DB: ${POSTGRES_CRON_DB}

```
* run `docker-compose up -d`


Thanks to:
- https://github.com/citusdata/pg_cron/issues/129#issuecomment-802837332
- https://github.com/ramazanpolat/postgres_cron/tree/master
- https://stackoverflow.com/a/61587089/4371020
