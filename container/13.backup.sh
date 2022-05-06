 

# Backup data container

  # Step -1 | Setup,
  # Create & Running Container
  # Prepare mount folder
  docker run -d \
    --name contoh_backupContainer \
    --mount "type=bind,source=/home/potatro/Potatro/docker/docker-dasar/data/backup,destination=/backup" \
    --mount "type=volume,source=mongoData,destination=/data/db" \
    --publish 27019:27017 \
    nginx:latest

  # exec container and compress data 
  docker exect -it contoh_backupContainer bash
    tar cvf /backup/backup.tar.gx /data/

  #stop running container
  docker stop contoh_backupContainer

  #remove running container
  docker rm contoh_backupContainer

  #done



  #shorhand
    docker run \
    --rm \
    --name contoh_backupContainer \
    --mount "type=bind,source=/home/potatro/Potatro/docker/docker-dasar/data/backup,destination=/backup" \
    --mount "type=volume,source=mongoData,destination=/data" \
    --publish 27019:27017 \
    ubuntu:latest tar cvf /backup/backup.tar.gz /data/