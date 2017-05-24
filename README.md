# Import Email into Elasticsearch

## Running

Add your email addresses, and passwords, to `docker-compose.yml` and run:

```shell
docker-compose up -d elasticsearch
sleep 5 # This allows Elasticsearch to get healthy before you try and connect
docker-compose up
```

## Gmail

I'd probably use an app password, not your main password: https://security.google.com/settings/security/apppasswords
