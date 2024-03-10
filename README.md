# ELK-Sandbox

Initiates the environment
```
docker compose up -d
```

Copy .crt to local so you can connect using the certificate
```
mkdir certs
docker cp elk-sandbox-es01-1:/usr/share/elasticsearch/config/certs/ca $PWD/certs
```
