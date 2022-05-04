

docker  volume ls
docker volume create [volumne-name]
docker volume rm [volume-name]


docker container 
    create --name contoh_mount
    --publish 8080:27017
    --env MONGO_INITDB_ROOT_USERNAME=root
    --env MONGO_INITDB_ROOT_PASSWORD=root
    --mount "type=volume,source=mongodata,destination=/data/db"
    mongo:latest

    docker container  create --name contoh_mount --publish 8080:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root --mount "type=volume,source=mongodata,destination=/data/db" mongo:latest



