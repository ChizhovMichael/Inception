docker-compose down
docker volume rm srcs_wordpress
docker volume rm srcs_dbdata

rm -rf /Users/tgildero/Desktop/data/dbdata
rm -rf /Users/tgildero/Desktop/data/wordpress

mkdir /Users/tgildero/Desktop/data/dbdata
chmod 755 /Users/tgildero/Desktop/data/dbdata
mkdir /Users/tgildero/Desktop/data/wordpress
chmod 755 /Users/tgildero/Desktop/data/wordpress

docker-compose build
docker-compose up -d