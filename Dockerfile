FROM nginx
COPY space.conf /etc/nginx/conf.d/space.conf

EXPOSE 80
CMD /bin/bash -c "nginx -g 'daemon off;'"
