docker-compose down
docker volume rm srcs_wordpress
docker volume rm srcs_dbdata
docker-compose build
docker-compose up -d