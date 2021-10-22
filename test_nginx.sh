docker stop nginx-container
docker rm nginx-container
docker build -t nginx-image ./srcs/requirements/nginx/
docker run -d --name nginx-container -p 80:80 -p 443:443 nginx-image