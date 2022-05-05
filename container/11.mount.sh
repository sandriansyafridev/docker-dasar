
# Mount, Sharing file or folder between container and host


  docker run -d \
    --name contoh_mount \
    --mount "type=bind,source=/home/potatro/Potatro/docker/docker-dasar/mount,destination=/data/db" \
    --publish 27017:27017 \
    --env MONGO_INITDB_ROOT_USERNAME=root \
    --env MONGO_INITDB_ROOT_PASSWORD=root \
    mongo:latest



