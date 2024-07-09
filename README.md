# MariaDB 10.6.18

### Criar pasta para os bancos de dados e arquivos de configuração
	mkdir -p /opt/docker/mariadb/{db,conf}
### Copia o arquivo "docker-compose.yaml" para a pasta do MariaDB
	cp docker-compose.yaml /opt/docker/
### Executar o container
	cd /opt/docker
	docker compose up -d
### Para acessar a console do MariaDB
	mariadb -u root -p<senha>
### Para acessar aconsole do container
	docker exec -it mariadb sh
### Para criar um banco de dados
	CREATE DATABASE teste;
	CREATE DATABASE teste CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';
### Para adicionar um usuário
	GRANT ALL ON teste.* TO 'teste'@'%' IDENTIFIED BY 'teste';
### Para adicionar um super usuário
	GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'Passw0rd' WITH GRANT OPTION;
### Para alterar a senha do usuário
	ALTER USER 'usuario'@'%' identified by 'nova senha';
### Para renomear o usuário
	RENAME USER 'usuario' to 'novo-usuario'@'%';
### Remover usuários, tables ou banco de dados
	DROP USER usuario@localhost;
	DROP TABLE tabela;
	DROP DATABASE database;
### Para fazer backup
	mysqldump -u root -p > backup.sql
	mysqldump -u root -p --all-databases --single-transaction --lock-tables=false | gzip > /backup/backup-$(date +%Y%m%d).sql.gz
### Para fazer restore
	gunzip < backup.sql.gz | mariadb -u root -p <banco de dados>
### Para listar os bancos de dados ou tabelas
	show databases;
	show tables;
### Para exibir conexões e processos
	show status;
	show status where variable_name = 'threads_connected';
	show processlist;
### Para ajustar variaveis
	show variables like 'max_allowed_packet';
	set global max_allowed_packet=1072731894;
### Para configurar a segurança do MariaDB
	mysql_secure_installation;
