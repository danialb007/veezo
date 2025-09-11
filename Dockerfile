FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY build/web /usr/share/nginx/html