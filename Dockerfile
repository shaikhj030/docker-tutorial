FROM ubuntu

RUN apt-get update -y && apt-get install -y nginx

#RUN echo "insert message from docker file" > /usr/share/nginx/html/index.html

RUN rm -rf /var/www/html/*

COPY index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
