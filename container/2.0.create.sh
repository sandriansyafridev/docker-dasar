
#   Create docker container

    # create docker in local repository
    docker container create --name [container-name-to-create] [docker-image:tag]

    #example in inline
    docker container  create --name contoh_nginx nginx:latest
    
    #example in multipe-line
    docker container \
    create --name contoh_nginx \
    nginx:latest
