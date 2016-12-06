FROM nginx
COPY nginx.template /etc/nginx/conf.d/nginx.template

ENV DOLLAR='$'
EXPOSE 80
CMD /bin/bash -c "envsubst < /etc/nginx/conf.d/nginx.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
