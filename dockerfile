FROM nginx:alpine

COPY index.html /usr/share/nginx/html/

RUN echo 'server { listen 80; location / { try_files $uri /index.html; } }' > /etc/nginx/conf.d/default.conf

EXPOSE 80
