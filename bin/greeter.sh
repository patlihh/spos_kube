#!/usr/bin/env bash	 

#echo "build greeter-client..."

#CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' -o greeter-client .

echo "delete greeter-client docker image..."
docker rmi --force greeter-client:v1

echo "build greeter-client docker image..."
docker build -t greeter-client:v1 .

echo "docker run greeter-client..."
#docker run -it -e WORDPRESS_DB_HOST=192.168.99.100 -e WORDPRESS_DB_PORT=31135 -e WORDPRESS_DB_PASSWORD=Unitone -e SPOS_AUTH=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1MzU5NDcyNTUsImlhdCI6MTUzNTk0MzY1NX0.C5axQvnEdpqiE3P2ADr4gj3i3Mvc1zLGaR2TPSelYa8 -e ADDRESS=192.168.99.100:30372 greeter-client:v1
docker run -it greeter-client:v1

