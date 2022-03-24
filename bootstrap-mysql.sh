#!/bin/bash
docker cp dump.sql bold_khorana:dump.sql
docker exec -it --env MYSQL_PWD=password bold_khorana bash -c "mysql -u root  -e \"CREATE DATABASE pouletmayo\""
docker exec -it --env MYSQL_PWD=password bold_khorana bash -c "mysql -u root  --default-character-set=utf8 pouletmayo < dump.sql"