FROM tutum/nginx
RUN rm /etc/nginx/sites-enabled/default
ADD sites-enabled/ /etc/nginx/sites-enabled
ADD static/ /usr/src/static
