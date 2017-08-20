Benjamin Banavige & Karthik Garimella

# Table of Contents

- [Data Recipes](#data-recipes)
- [How to Install Docker](#how-to-install-docker)
  - [Mac](#mac)
    - [Virtualization: `kern.hv_support: 1`](#virtualization-kernhv_support-1)
    - [No Virtualization: `kern.hv_support: 0`](#no-virtualization-kernhv_support-0)
  - [Windows](#windows)
- [How to Run Docker](#how-to-run-docker)
  - [Mac with Virtualization](#mac-with-virtualization)
  - [Mac without Virtualization](#mac-without-virtualization)
  - [Windows without Virtualization](#windows-without-virtualization)
    - [Docker Quickstart Terminal](#docker-quickstart-terminal)
    - [Kitematic Application](#kitematic-application)
- [How to Use Jupyter Notebook and the Docker terminal.](#how-to-use-jupyter-notebook-and-the-docker-terminal)

# Data Recipes

 This repository contains several GES DISC data recipes to demonstrate how to work with Earth Science Data. This repository contains everything a user needs to run a GES DISC Jupyter Notebook on your computer without having to install anything besides docker.

# How to Install Docker

*Note: Installing Docker on your machine will require Admin privileges*


## Mac

If you have a mac, there are two possible versions of docker you may need. The need for different versions of docker depend on whether your Mac has virtualization capibilities. In order to check whether your Mac has virtualization enabled, run the following in your terminal:

> `sysctl kern.hv_support`

You should see a line of output that says `kern.hv_support:` followed by a 1 or a 0. Follow the following instructions based on your output from this command.

### Virtualization: `kern.hv_support: 1`

If you see this output, you have virtualization capibility, and you can run the current version of docker from the command line. To install, follow these steps:

1. Click this link to download docker: [Docker Download](https://download.docker.com/mac/stable/Docker.dmg)

2. Once the download has finished, open the file.

3. Drag the Docker application to the Applications folder.

4. Navigate to the Applications folder and open docker. You may need to input an administrator's password to allow docker to run.

5. You should see a whale on your status bar with some boxes moving around. Once these boxes stop moving, docker is successfully installed and running. You can run docker from here.

If you have more questions about this process, refer to the following video tutorial: https://youtu.be/MuhyK1QFwfM

### No Virtualization: `kern.hv_support: 0`

If this is the output you saw, you do not have virtualization capabilities, so you will need to download Docker Toolbox. To install, follow these steps:

1. Click this link to download Docker Toolbox for Mac: [Download Docker Toolbox Mac](https://download.docker.com/mac/stable/DockerToolbox.pkg)

2. Once the download has finished, open the file and install the software. You will need adminstrator's privelege complete this step.

3. Once the installation is complete, you will have two new applications, Docker Quickstart Terminal and Kitematic. 

4. Navigiate to the Applications folder and open the docker folder.  Now, you can open the Docker Quickstart Terminal and run docker commands from here. 

If you have more questions about this this process, refer to the following video tutorial: https://youtu.be/rKbNsT2kH7g

## Windows

If you are using a Windows machine, we recommend that you install the Docker Toolbox Application. To install, follow these steps:

1. Click this link to download Docker Toolbox for Windows: [Docker Toolbox Windows Download](https://download.docker.com/win/stable/DockerToolbox.exe)

2. Once the download has finished, open the file.

3. Once installation is complete, you will have two new applications, Docker Quickstart Terminal and Kitematic.

4. First, open the Kitematic application. After it is mostly loaded, click on "Use Virtual Box".

5. Once Kitematic is finished creating a Docker VM, it will ask you for your DockerHub credentials. You can create a free DockerHub account by going [here](https://hub.docker.com/).  You can now search for Docker containers within Kitematic.

6. If you would like to use the Docker Quickstart Terminal instead (recommended), you must *first* open Kitematic (only once) so that it starts the Docker VM.

If you have more questions about this process, refer to the following video tutorial: https://www.youtube.com/watch?v=I_r44eGhN90&t=322s




# How to Run Docker

Remember: if you have a Mac, to check for virtualization capability, run the following command in your terminal:

> `sysctl kern.hv_support`

If you see an output of 1, your Mac supports virtualization. If you see an output of 0, your Mac does not support virtualization.

## Mac with Virtualization

Right click on [this link](https://raw.githubusercontent.com/karthenjamin/data_recipes/master/startup_mac_virtualization.sh), click "Save Link As..." and save the file to your desktop as "startup_mac_virtualization.sh". Now, we have this `.sh` file saved to the Desktop.

Open your terminal, and use `cd` ("change directory") to navigate to your Desktop. You can use `ls` ("list") to check what is in your current directory. If you see Desktop in the `ls` output, you can type `cd Desktop` to navigate there. Once at your Desktop, you can again type `ls` and hit enter. You should see `startup_mac_virtualization.sh` in the list. Run the following command to allow this file to be executable:

> `chmod +x startup_mac_virtualization.sh`

Now, we can run this file as an executable. To do this, type the following in your terminal:

> `./startup_mac_virtualization.sh`

Assuming Docker has been installed correctly, this command will download the image of the docker container, startup a container and open Jupyter Notebook in your default web browser.

## Mac without Virtualization

Right click on [this link](https://raw.githubusercontent.com/karthenjamin/data_recipes/master/startup_toolbox.sh), click "Save Link As..." and save the file to your desktop as "startup_toolbox.sh". Now, we have this `.sh` file saved to the Desktop.

Open the Docker Quickstart Terminal, and use `cd` ("change directory") to navigate to your Desktop. You can use `ls` ("list") to check what is in your current directory. If you see Desktop in the `ls` output, you can type `cd Desktop` to navigate there. Once at your Desktop, you can again type `ls` and hit enter. You should see `startup_toolbox.sh` in the list. Run the following command to allow this file to be executable:

> `chmod +x startup_toolbox.sh`

Now, we can run this file as an executable. To do this, type the following in your quickstart terminal:

> `./startup_toolbox.sh`

Assuming Docker Toolbox has been installed correctly, this command will download the image of the docker container, startup a container and open Jupyter Notebook in your default web browser.

## Windows without Virtualization

Remember, you have two options to run a docker container with Docker Toolbox for Windows. You can either use the Kitematic Application or you can use the Docker Quickstart Terminal (recommended).  

### Docker Quickstart Terminal

*Remember, if this is your first time opening Docker Quickstart Terminal, you must first run the Kitematic application to start the VM (then, you may close out of Kitematic).  Afterwards, you will no longer need to run the Kitematic app.*

Right click on [this link](https://raw.githubusercontent.com/karthenjamin/data_recipes/master/windows_startup.sh), click "Save Link As..." and save the file to your desktop as "windows_startup.sh". Now, we have this `.sh` file saved to the Desktop.

Open the Docker Quickstart Terminal, and use `cd` ("change directory") to navigate to your Desktop. You can use `ls` ("list") to check what is in your current directory. If you see Desktop in the `ls` output, you can type `cd Desktop` to navigate there. Once at your Desktop, you can again type `ls` and hit enter. You should see `windows_startup.sh` in the list. Run the following command to allow this file to be executable:

> `chmod +x windows_startup.sh`

Now, we can run this file as an executable. To do this, type the following in your quickstart terminal:

> `./windows_startup.sh`

Assuming Docker Toolbox has been installed correctly, this command will download the image of the docker container, startup a container and open Jupyter Notebook in your default web browser.


### Kitematic Application

1. Launch the Kitematic app that comes with the installation of Docker Toolbox (you may have to login to your DockerHub account).
2. From here, search for "karthenjamin/data_recipes" in the "Search for Docker images in Docker Hub" search bar.
3. Once you have located this repository, simply click on "Create".
4. This should start the container; click the expand button on the Web Preview
5. This should open the Jupyter Notebook and prompt you for a password. Enter: benkarthik
6. Back in the Kitematic application, click on the "EXEC" button above the container logs to start the terminal for this container. 

# How to Use Jupyter Notebook and the Docker terminal.

This section assumes that you have followed the above steps and successfully gotten the Jupyter Notebook to open. For more info on this, see above. Using Jupyter Notebook is the same across platforms.

For more information on how to use the Jupyter Notebook environment, see [this youtube tutorial](https://youtu.be/JImOfVHQtYc).

