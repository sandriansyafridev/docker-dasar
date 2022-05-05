
# Add Additional ENV for container
  docker container run -d \
    --name contoh_env \
    --publish 27017:27017 \
    --env MONGO_INITDB_ROOT_USERNAME=root \
    --env MONGO_INITDB_ROOT_PASSWORD=root \
  mongo:latest
   
      