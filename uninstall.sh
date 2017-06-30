docker stop $(docker ps -q) > /dev/null 2>&1
docker rm $(docker ps -aq) > /dev/null 2>&1
docker rmi karthenjamin/data_recipes
