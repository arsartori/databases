# MariaDB Start

### Criar pasta para os bancos de dados e arquivos de configuração
```
sudo mkdir -p /opt/docker/mariadb/{db,conf}
```

# Copia o arquivo "docker-compose.yaml" para a pasta do MariaDB
```
sudo cp docker-compose.yaml /opt/docker/mariadb
```

# Executar o container
```
docker compose -f /opt/docker/mariadb/docker-compose.yaml up -d
```
