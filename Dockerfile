FROM nginx:alpine

RUN curl https://myip6.ipip.net
COPY conf.d /etc/nginx/conf.d

ENV \
    PORT=80 \
    HOST=0.0.0.0

EXPOSE 80
EXPOSE 443

CMD sh -c "/docker-entrypoint.sh nginx -g 'daemon off;'"
