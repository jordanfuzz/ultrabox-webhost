FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/nginx.conf

COPY servers/ /etc/nginx/conf.d/

EXPOSE 80

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
