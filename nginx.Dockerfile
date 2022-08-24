FROM nginx:alpine

COPY ./staticfilenginx/index.html /usr/share/nginx/html

RUN chmod 777 /usr/share/nginx/html