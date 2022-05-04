docker container run --rm
--name ubuntu
--mount "type=bind,source=,destination"
--mount "type=volume,source=,destination"
ubuntu:latest
tar cvf [location_store] [dir_to_compress]



//multiple line
docker container 
    run --rm
    create --name temp_container
    --mount "type=bind,source=/home/potatro/Potatro/docker/backup/volume,destination=/backup"
    --mount "type=volume,source=mongodata,destination=/data/db"
    ubuntu:latest
    tar cvf /backup/backup3.tar.gz /data


//inline
docker container run --rm --name ubuntu --mount "type=bind,source=/home/potatro/Potatro/docker/backup/volume,destination=/backup" --mount "type=volume,source=mongodata,destination=/data/db" ubuntu:latest tar cvf /backup/backup3.tar.gz /data