# Data Recipes

This repository contains everything a user needs to run any Jupyter Notebook on your computer without having to install anything besides docker. This repository contains several GES DISC data recipes to demonstrate how to work with Earth Science Data.

# How to Install Docker

## Mac

If you have a mac, there are two possible versions of docker you may need. The need for different versions of docker depend on whether your Mac has virtualization capibilities. In order to check whether your Mac has virtualization, run the following in your terminal:

> `sysctl kern.hv_support`

You should see a line of output that says `kern.hv_support:` followed by a 1 or a 0. Follow the following instructions based on your output from this command.

#### `kern.hv_support: 1`

If you see this output, you have virtualization capibility, and you can run the current version of docker from the command line. To install, follow these steps:

1. Click this link to download docker: [Docker Download](https://download.docker.com/mac/stable/Docker.dmg)

2. Once the download has finished, open the file.

3. Drag the Docker application to the Applications folder.

4. Navigate to the Applications folder and open docker. You may need to input an administrator's password to allow docker to run.

5. You should see a whale on your status bar with some boxes moving around. Once these boxes stop moving, docker is successfully installed and running. You can run docker from here.

If you have more questions about this process, refer to the following video tutorial: [here](jfjkajkldfajklfd)

#### `kern.hv_support: 0`

If this is the output you saw, you do not have virtualization capabilities, so you will need to download Docker Toolbox. To install, foloow these steps:

1. Click this link to download Docker Toolbox: [Download Docker Toolbox](https://download.docker.com/mac/stable/DockerToolbox.pkg)

2. Once the download has finished, open the file and install the software. You will need adminstrator's privelege complete this step.

3. Once the installation is complete, you will have two new applications, Docker Quickstart Terminal and Kitematic. 

4. Navigiate to the Applications folder and open docker.  Now, you can open the Docker Quickstart Terminal and run docker commands from here. 

For a video explanation of this process, refer to the following video tutorial: [here](lolololololololol)

# How to Run Docker

Remember: if you have a Mac, to check for virtualization capability, run the following command in your terminal:

> `sysctl kern.hv_support`

If you see an output of 1, your Mac supports virtualization. If you see an output of 0, your Mac does not support virtualization.

## Mac with Virtualization

Right click on [this link](startup_mac.sh), click "Save Link As..." and save the file to your desktop as "startup_mac.sh". Now, we have this `.sh` file saved to the Desktop.

Open your terminal, and use `cd` ("change directory") to navigate to your Desktop. You can use `ls` ("list") to check what is in your current directory. If you see Desktop in the `ls` output, you can type `cd Desktop` to navigate there. Once at your Desktop, you can again type `ls` and hit enter. You should see `startup_mac.sh` in the list. Run the following command to allow this file to be executable:

> `chmod +x startup_mac.sh`

Now, we can run this file as an executable. To do this, type the following in your terminal:

> `./startup.sh`

Assuming Docker has been installed correctly, this command will download the image of the docker container, startup a container and open Jupyter Notebook in your default web browser.
Download [this file](https://raw.githubusercontent.com/karthenjamin/data_recipes/master/startup_mac.sh), which contains a series of commands to run docker 



