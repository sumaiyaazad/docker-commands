echo "CLEANING UP YOUR DOCKER"
echo "---------remove services-----------"
docker service rm $(docker service ls -q)
echo "---------remove containers-----------"
docker container rm -f $(docker ps -a -q)
echo "---------remove volumes-----------"
docker volume rm $(docker volume ls -q)
echo "---------remove images-----------"
docker rmi -f $(docker images -a -q)
echo "---------remove networks-----------"
docker network prune


