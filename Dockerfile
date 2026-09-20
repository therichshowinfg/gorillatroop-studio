FROM nginx:alpine

COPY index.html about.html careers.html privacy.html terms.html press.html roadmap.html styles.css favicon.svg /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

# Railway injects PORT; nginx must listen on it.
RUN echo 'server { \
    listen       $PORT; \
    server_name  _; \
    root   /usr/share/nginx/html; \
    index  index.html; \
    location / { \
        try_files $uri $uri.html $uri/ /index.html; \
    } \
    location ~* \.(css|svg|js|png|jpg|jpeg|gif|ico|woff2?)$ { \
        expires 7d; \
        add_header Cache-Control "public"; \
    } \
}' > /etc/nginx/conf.d/default.conf.template \
 && apk add --no-cache gettext

CMD ["/bin/sh", "-c", "envsubst '$$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
