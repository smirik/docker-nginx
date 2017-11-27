# Desciption
nginx image optimized for Symfony Flex projects.

# Usage
```Yaml
nginx:
    image: 4xxi/nginx:flex
    depends_on:
        - php
    volumes:
        - .:/var/www/html
        - ./var/log:/var/log/nginx
    ports:
        - "${SERVER_HTTP_PORT}:80"
```