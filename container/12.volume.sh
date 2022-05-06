# Mount, Sharing file or folder between container and host
# Useing type 'volume'

  docker volume create [volume-name]
  docker volume create mongoData

  docker run -d \
    --name contoh_reMountVolume \
    --mount "type=volume,source=mongoData,destination=/data/db" \
    --publish 27020:27017 \
    --env MONGO_INITDB_ROOT_USERNAME=root \
    --env MONGO_INITDB_ROOT_PASSWORD=root \
    mongo