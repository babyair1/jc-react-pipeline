FROM nginx

#SET WORKING DIREKTORY
WORKDIR /usr/share/nginx/html

# copy file from build directory
COPY build/ .

# expose port 80
EXPOSE 80