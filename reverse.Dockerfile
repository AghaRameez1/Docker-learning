FROM nginx:alpine

COPY ./reverse-proxy/default.conf /etc/nginx/conf.d/