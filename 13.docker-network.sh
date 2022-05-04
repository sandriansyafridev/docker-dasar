docker network ls
docker network create [name]

//STEP-1
docker container
    create --name mongodb
    --env MONGO_INITDB_ROOT_USERNAME=root
    --env MONGO_INITDB_ROOT_PASSWORD=root
    --network mongo_network
    mongo:latest

docker container create --name mongodb --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root --network mongo_network mongo


//STEP-2
docker container
    create --name mongodb
    --publish 8080:27017
    --env ME_CONFIG_MONGODB_URL="mongodb://root:root@mongodb:27017/"
    --network mongo_network
    mongo-express

//STEP-2
docker container create --name mongoexpress --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://root:root@mongodb:27017/" --network mongo_network mongo-express


//STEP-3 DISCONNECT
docker network disconnect [name-network][name-container]
docker network disconnect mongo_network mongodb


//STEP-3 CONNECT
docker network connect [name-network][name-container]
docker network connect mongo_network mongodb