docker container
    create --name contoh_backup
    --publish 8081:27017
    --env MONGO_INITDB_ROOT_USERNAME=root
    --env MONGO_INITDB_ROOT_PASSWORD=root
    --mount "type=bind,source=/home/potatro/Potatro/docker/backup/volume,destination=/backup"
    --mount "type=volume,source=mongodata,destination=/data/db"


docker container create --name contoh_backup --publish 8081:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root --mount "type=bind,source=/home/potatro/Potatro/docker/backup/volume,destination=/backup" --mount "type=volume,source=mongodata,destination=/data/db" mongo:latest