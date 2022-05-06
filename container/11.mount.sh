
# Mount, Sharing file or folder between container and host
# Useing type 'bind'

  docker run -d \
    --name contoh_mountBind \
    --mount "type=bind,source=/home/potatro/Potatro/docker/docker-dasar/data/bind,destination=/data/db" \
    --publish 27017:27017 \
    --env MONGO_INITDB_ROOT_USERNAME=root \
    --env MONGO_INITDB_ROOT_PASSWORD=root \
    mongo



