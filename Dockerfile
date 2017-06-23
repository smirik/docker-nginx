FROM nginx:alpine

COPY nginx.conf /etc/nginx/
COPY symfony.conf /etc/nginx/sites-available/

RUN rm /etc/nginx/conf.d/default.conf
RUN echo "upstream php-upstream { server web:9000; }" > /etc/nginx/conf.d/upstream.conf
RUN adduser -D -u 1000 www-data

CMD ["nginx"]

EXPOSE 80 443
