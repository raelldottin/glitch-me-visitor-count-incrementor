# Base image
FROM alpine:latest

# installs the required packages for our script
RUN apk add --no-cache \
	bash \
	ca-certificates \
	curl

# copies our script to the filesystem
COPY entrypoint.sh /entrypoint.sh

# change permission to execute the script
RUN chmod +x /entrypoint.sh

# specifies which file to execute when the docker container starts up
ENTRYPOINT ["/entrypoint.sh"]
