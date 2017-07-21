docker stop $(docker ps -q) > /dev/null 2>&1
docker rm $(docker ps -aq) > /dev/null 2>&1
echo ""
echo "----------------------------------------------------------------------------"
echo "pulling current image"
echo "----------------------------------------------------------------------------"
echo ""
overwrite_bool=false
if docker images | awk -F ' ' '{print $1}' | grep "data_recipes_saved" > /dev/null; then
	echo "there are currently previously saved data recipe images on your machine."
	echo ""
	while true; do
		read -p "do you want to open a previous container (y/n)? " answer
		if echo "$answer" | grep -iq "^y"; then
			overwrite_bool=true
		    echo "here is a list of all previously saved date recipe images and the times they were last saved"
		    echo "#  version-date/time saved"
			docker images | grep "data_recipes_saved"| sort | awk -F ' ' '{print NR "  " $2}'
			echo ""
			while true; do
				read -p "which of these would you like to open? input a line number (# above) " line_num
				if docker images | grep "data_recipes_saved" | awk -F ' ' '{print NR}' | grep $line_num > /dev/null; then
					img=data_recipes_saved:$(docker images | grep "data_recipes_saved" | sort | awk -F ' ' '{print $2}' | sed -n "${line_num}p")
					echo ""
					echo "opening $img"
					break
				fi
			done
			con="data_recipes_saved"
			docker run -dit --name $con --restart always -p 1234:8888 $img > /dev/null
		    break
		elif echo "$answer" | grep -iq "^n" ; then
			img="karthenjamin/data_recipes"
		    con="data_recipes"
		    docker pull $img
		    docker run -dit --name $con --restart always -p 1234:8888 $img > /dev/null
		    break
		else
			echo "you didn't input y (yes) or n (no)"
		fi
	done
else
	img="karthenjamin/data_recipes"
	con="data_recipes"
	docker pull $img
	docker run -dit --name $con --restart always -p 1234:8888 $img > /dev/null
fi
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
docker exec -it $con bash
# echo ""
# echo "do you want to save your current image?"
# echo ""
while $overwrite_bool; do
	read -p "do you want to overwrite the previous save (y/n) " yn
	case $yn in
    [Yy]* ) echo "saving....."; echo ""; docker commit $con $img > /dev/null; echo "saved as $img"; break;;
    [Nn]* ) overwrite_bool=false; break;;
    * ) echo "Please answer y (yes) or n (no)";;
	esac
done
if [ "$overwrite_bool" == "false" ]; then
	while true; do
		tag="v$(( $(docker images | awk -F ' ' '{print $1}' | grep "data_recipes_saved" | wc -l) + 1))-$(date +"%m.%d.%y-%I.%M%p")"
		echo ""
	    read -p "do you want to create a new save with your current image? (y/n) " yn
	    echo ""
	    case $yn in
	        [Yy]* ) echo "saving....."; echo ""; docker commit $con data_recipes_saved:$(echo "$tag") > /dev/null; echo "saved as $con:$(echo "$tag")"; break;;
	        [Nn]* ) echo "exiting without saving"; break;;
	        * ) echo "Please answer y (yes) or n (no)";;
	    esac
	done
fi
echo ""
echo "----------------------------------------------------------------------------"
echo "closing jupyter notebook"
echo "----------------------------------------------------------------------------"
echo ""
docker stop $con > /dev/null 2>&1
echo "----------------------------------------------------------------------------"
echo "closing docker container"
echo "----------------------------------------------------------------------------"
echo ""