# docker-mariadb
MariaDB container, scripts and other files

mkdir -p /opt/docker/mariadb/var/lib/mysql

docker run -d --name mariadb-server -p 3306:3306 -v /opt/docker/mariadb/var/lib/mysql:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=Password123! mariadb:10.6.11
