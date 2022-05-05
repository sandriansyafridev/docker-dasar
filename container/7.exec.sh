
# Enter in to running container and can execute ubuntu terminal or something you want
  docker exec -it [container-name] bash 
  docker exec -it [container-name] sh

  #example

  #step-1 create container
  docker run -d \
  --name contoh_nginx \
  --publish 8080:80 \
  nginx:latest

  #step-2 exec container
  docker exec -it contoh_nginx bash  