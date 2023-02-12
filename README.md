# pocketbase

https://pocketbase.io/docs/going-to-production/#using-docker

```sh
docker run \
  -d \
  -p 8080:8080 \
  --name pocketbase \
  -v pocketbase:/data \
  ghcr.io/oscarhult/pocketbase:latest
```
