
create container with publish port
//basic script : 
docker container create --name [container-name] --publish [port_host:port_docker_image:image] [docker-image:tag]

//example
docker container create --name contoh_nginx --publish 8080:80 nginx:latest 
docker container create --name contoh_nginx --publish 8080:80 --publish 8081:80 nginx:latest 