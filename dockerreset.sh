docker service rm $(docker service ls -q)
docker rm -vf $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
docker network prune
