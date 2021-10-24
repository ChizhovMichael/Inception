# delete all image and conrainers
docker kill $(docker ps -q)

docker container prune --force
docker image prune --all


# nginx
# docker build -t nginx-image ./srcs/requirements/nginx/
# docker run -d --name nginx-container -p 80:80 -p 443:443 nginx-image

docker build -t wordpress-image ./srcs/requirements/wordpress/
docker run -d --name wordpress-container -p 9000:9000 wordpress-image


# docker crerate [OPTIONS] IMAGE [COMMAND] [ARG...]
# docker container ls --all
# docker run --name aname -it -p 80:80 -p 443:443 name
# Get Logs: docker logs mynginx
# Start Container: docker start mynginx
# Stop Container: docker stop mynginx
# Delete Container: docker rm mynginx
# docker exec -it <container> bash
# docker inspect nginx