all:
	docker-compose --file srcs/docker-compose.yml build
	# mkdir ~/Desktop/data/dbdata
	# mkdir ~/Desktop/data/wordpress
	# mkdir ~/Desktop/data/simple_vue
	docker-compose --file srcs/docker-compose.yml up -d