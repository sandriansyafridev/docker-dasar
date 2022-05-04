docker container 
    create --name contoh_mount
    --env MONGO_INITDB_ROOT_USERNAME=root
    --env MONGO_INITDB_ROOT_PASSWORD=root
    --mount "type=bind,source=/home/potatro/Potatro/docker/backup/volume,destination=/data/db"
    mongo:latest


docker container  create --name contoh_mount --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root --mount "type=bind,source=/home/potatro/Potatro/docker/backup/volume,destination=/data/db" mongo:latest