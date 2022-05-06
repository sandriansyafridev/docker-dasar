# Restore backup data 

# We have backup data
# Setup, mount host directory to container directory

# Create New Volume
  docker volume create restoreBackupVolume

# Create New Container
# Setup, mount volume in container to container directory
  docker run -d \
    --name contoh_restoreBackupData  \
    --mount "type=bind,source=/home/potatro/Potatro/docker/docker-dasar/data/backup,destination=/restore" \
    --mount "type=volume,source=restoreBackupVolume,destination=/data" \
    --publish 27019:27017 \
    --env MONGO_INITDB_ROOT_USERNAME=root \
    --env MONGO_INITDB_ROOT_PASSWORD=root \
  mongo

# exec container
docker exec -it contoh_restoreBackupData bash
  # extract backup data
  cd /restore && tar backup.tar.gz --strip 1 -C /data/db

#done 