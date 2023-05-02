FROM postgres:14.7

RUN apt-get update && apt-get -y install postgresql-14-cron

ENV POSTGRES_CRON_DB = $POSTGRES_CRON_DB

COPY runtime/ /

RUN chmod +x /docker-entrypoint-initdb.d/000_bash.sh