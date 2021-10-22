docker stop wordpress-container
docker rm wordpress-container
docker build -t wordpress-image ./srcs/requirements/wordpress/
docker run -d --name wordpress-container -p 9000:9000 wordpress-image