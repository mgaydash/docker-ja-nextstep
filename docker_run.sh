# -e PASSENGER_APP_ENV=development \
# --volumes-from bundle_box \

docker run \
	-d \
	-e SECRET_KEY_BASE \
	-e PAPERCLIP_BUCKET_NAME \
	-e PAPERCLIP_ACCESS_KEY_ID \
	-e PAPERCLIP_SECRET_ACCESS_KEY \
	-e AWS_ACCESS_KEY_ID \
	-e AWS_SECRET_ACCESS_KEY \
	-e AWS_REGION \
	-e MYSQL_USERNAME \
	-e MYSQL_PASSWORD \
	-e MYSQL_HOST \
	-e MYSQL_DATABASE \
	--link mysql \
	--name ja-nextstep \
	-p 80:80 \
	-p 8080:8080 \
	ja-nextstep:1.0.0 bash \
		./startup.sh
