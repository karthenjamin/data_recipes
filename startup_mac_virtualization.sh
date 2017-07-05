docker stop $(docker ps -q) > /dev/null 2>&1
docker rm $(docker ps -aq) > /dev/null 2>&1
echo ""
echo "----------------------------------------------------------------------------"
echo "pulling current image"
echo "----------------------------------------------------------------------------"
echo ""
docker pull karthenjamin/data_recipes &> /dev/null
docker run -dit --name data_recipes --restart always -p 1234:8888 karthenjamin/data_recipes > /dev/null
echo ""
echo "----------------------------------------------------------------------------"
echo "opening jupyter notebook"
echo "----------------------------------------------------------------------------"
echo ""
sleep 2
open "http://0.0.0.0:1234/?token=benkarthik"
sleep 2
echo "----------------------------------------------------------------------------"
echo "opening docker bash"
echo "----------------------------------------------------------------------------"
echo ""
echo "you are in directory /home/condauser/tutorials"
echo ""
echo "type 'exit' when finished to exit docker environment"
echo ""
docker exec -it data_recipes bash
echo ""
echo "----------------------------------------------------------------------------"
echo "closing jupyter notebook"
echo "----------------------------------------------------------------------------"
echo ""
docker stop data_recipes > /dev/null 2>&1
echo "----------------------------------------------------------------------------"
echo "closing docker container"
echo "----------------------------------------------------------------------------"
echo ""
