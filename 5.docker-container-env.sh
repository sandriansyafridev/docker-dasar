
create container with enviroment variable
//basic script : 
docker container create --name [container-name] --publish [port_host:port_docker_image:image] --env [env-name1=value1] --env [env-name2=value2] [docker-image:tag]


//example integration mongo
docker container create --name contoh_mongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest