
#   Create && Running Container && pull docker image in remote repository if not available in local repository
    docker run [docker-image-name:tag] # create && running container and stuck in terminal 

    # create && running container in background and display container ID
    docker run -d [docker-image-name:tag] 

    # create && running container in background and display container ID
    docker run -d [docker-image-name:tag]

    # create && running container in background  
    # display container ID 
    # assign name to container 
    docker run -d --name [container-name-to-create] nginx:latest 

    # example
    # inline 
    docker run -d --name contoh_nginx2 nginx:latest

    #multiple-line
    docker run -d \
    --name contoh_nginx2 \
    nginx:latest