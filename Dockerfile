FROM nginx

ENV TZ=Asia/Shanghai
COPY space.conf /etc/nginx/conf.d/space.conf
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 80
CMD /bin/bash -c "nginx -g 'daemon off;'"
