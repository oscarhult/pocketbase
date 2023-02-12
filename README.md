# pocketbase

https://pocketbase.io/docs/going-to-production/#using-docker

```sh
docker run \
  -d \
  -p 8080:8080 \
  --name pocketbase \
  -v pocketbase_data:/data \
  -v pocketbase_public:/public \
  ghcr.io/oscarhult/pocketbase
```
