docker run \
	-d \
	-e MYSQL_ROOT_PASSWORD=${MYSQL_PASSWORD} \
	-e MYSQL_DATABASE=${MYSQL_DATABASE} \
	--name mysql \
	-p 3036:3036 \
	-v /var/lib/mysql:/var/lib/mysql \
	mysql:5.7
