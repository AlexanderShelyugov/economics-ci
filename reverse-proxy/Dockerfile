FROM nginx:1.18-alpine
RUN rm /etc/nginx/conf.d/default.conf
VOLUME /etc/nginx/
VOLUME /var/logs/nginx/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]