FROM nginx:1.19-alpine

RUN adduser -S -G nginx nginx || true

# RUN addgroup -S nginx && adduser -S -G nginx nginx
# -s /bin/sh nginx

RUN chown -R nginx:nginx /var/cache/nginx /etc/nginx /usr/share/nginx /usr/sbin/nginx /var/run/

# COPY nginx.conf /etc/nginx/nginx.conf

USER nginx

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
