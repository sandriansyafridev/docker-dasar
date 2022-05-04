docker container 
    create --name mysqldb
    --env MYSQL_ROOT_PASSWORD=root
    --env MYSQL_USER=root
    --env MYSQL_PASSWORD=root
    --network host
    mysql


docker container create --name mysqldb --env MYSQL_ROOT_PASSWORD=root --env MYSQL_USER=root --env MYSQL_PASSWORD=root --network host mysql



docker container 
    create --name adminer
    --publish 8080:8080
    --network host
    mysql


docker container create --name adminer --publish 8080:8080 --network host mysql
