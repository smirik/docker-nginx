# Requirements
(!) Must be to set environment variables

```Shell
ENV=(prod|dev)
WWW_DIR=/var/www/html
```

# Usage
```Yaml
nginx:
  image: 4xxi/nginx
  depends_on:
    - web
  volumes:
    - ./var/logs:/var/log/nginx
    - .:${WWW_DIR}
  ports:
    - "${SERVER_HTTP_PORT}:80"
  environment:
    WWW_DIR: ${WWW_DIR}
    SYMFONY_ENV: ${ENV}
```
