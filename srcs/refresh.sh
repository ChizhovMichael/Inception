docker-compose down
docker volume rm srcs_wordpress
docker volume rm srcs_dbdata

sudo rm -rf ~/data

mkdir -p /home/michael/data/dbdata
mkdir -p /home/michael/data/wordpress

docker-compose build
docker-compose up -d