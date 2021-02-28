docker run --rm -it -p 8080:8080 --name vue-setup \
 --mount type=bind,source=$1/vue-setup,target=/app \
 --mount type=bind,source=$1/$2,target=/repo \
vue-setup

docker exec -it vue-setup bash