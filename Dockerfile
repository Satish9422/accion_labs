FROM nginx:1.19-alpine

RUN addgroup -S nginx && adduser -s nginx -G nginx

RUN chown -R nginx:nginx /var/cache/nginx /var/run /etc/nginx

# COPY nginx.conf /etc/nginx/nginx.conf

USER nginx

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]
