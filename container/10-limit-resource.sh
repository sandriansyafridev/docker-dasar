# Resource Limit, limit size memory or cpu for container
  #memory 
    #- b = byte
    #- k = kilo-byte
    #- m = mega-byte
    #- g = giga-byte
  #cpu
    #- 1.5 / 1.2 / 0.5 , (...)

  #example
  docker container run -d \
    --name contoh_nginx_limit \
    --memory=100m \
    --cpus=1.5 \
  nginx:latest
   