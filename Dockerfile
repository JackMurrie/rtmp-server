FROM tiangolo/nginx-rtmp

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./static/stat.xsl /var/local/stat.xsl

EXPOSE 80
EXPOSE 1935

ENV NGINX_PORT=80