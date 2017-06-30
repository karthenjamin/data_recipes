# Data Recipes

This repository contains everything a user needs to run any Jupyter Notebook on your computer without having to install anything besides docker. This repository contains several GES DISC data recipes to demonstrate how to work with Earth Science Data.

# Which Version of Docker Do I Need?

## Mac

If you have a mac, there are two possible versions of docker you may need. The need for different versions of docker depend on whether your Mac has virtualization capibilities. In order to check whether your Mac has virtualization, run the following in your terminal:

> `sysctl kern.hv_support`

You should see a line of output that says `kern.hv_support:` followed by a 1 or a 0. Follow the following instructions based on your output from this command.

### `kern.hv_support: 1`

If you see this output, you have virtualization capibility, and you can run the current version of docker from the command line. To install, follow these steps:

1. Click this link: [store.docker.com](https://store.docker.com/editions/community/docker-ce-desktop-mac)

2. Once the download has finished, open the file.

3. Drag the Docker application to the Applications folder.

4. Navigate to the Applications folder and open docker. You may need to input an administrator's password to allow docker to run.

5. You should see a whale on your status bar with some boxes moving around. Once these boxes stop moving, docker is successfully installed and running. You can run docker from here.

If you have more questions about this process, refer to the following video tutorial: [here](jfjkajkldfajklfd)

### `kern.hv_support: 0`

If this is the output you saw, you do not have virtualization capabilities, so you will need to download Docker Toolbox.

