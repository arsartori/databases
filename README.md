# MariaDB

### Criar pasta para os bancos de dados e arquivos de configuração
	mkdir -p /opt/docker/mariadb/{db,conf}

### Copia o arquivo "docker-compose.yaml" para a pasta do MariaDB
	cp docker-compose.yaml /opt/docker/mariadb/

### Executar o container
	docker compose up -d

### Para criar um banco de dados
	CREATE DATABASE teste CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';
### Para adicionar um usuário
	GRANT ALL ON teste.* TO 'teste'@'%' IDENTIFIED BY 'teste';
### Para adicionar um super usuário
	GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'Passw0rd' WITH GRANT OPTION;
