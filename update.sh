echo ""
echo "removing old image"
echo ""

docker stop $(docker ps -q) > /dev/null 2>&1
docker rm data_recipes > /dev/null 2>&1
docker rmi -f karthenjamin/data_recipes > /dev/null 2>&1

echo ""
echo "installing new image"
echo ""

docker pull karthenjamin/data_recipes
