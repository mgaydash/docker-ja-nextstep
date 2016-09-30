# -e PASSENGER_APP_ENV=development \

docker run \
	-d \
	-e SECRET_KEY_BASE \
	-e PAPERCLIP_BUCKET_NAME \
	-e PAPERCLIP_ACCESS_KEY_ID \
	-e PAPERCLIP_SECRET_ACCESS_KEY \
	-e AWS_ACCESS_KEY_ID \
	-e AWS_SECRET_ACCESS_KEY \
	-e AWS_REGION \
	--name ja-nextstep \
	-p 80:80 \
	--volumes-from bundle_box \
	ja-nextstep:latest bash \
		./startup.sh
