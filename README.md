# Data Recipes

This repository contains everything a user needs to run any Jupyter Notebook on your computer without having to install anything besides docker. This repository contains several GES DISC data recipes to demonstrate how to work with Earth Science Data.

# Which Version of Docker Do I Need?

## Mac

If you have a mac, there are two possible versions of docker you may need. The need for different versions of docker depend on whether your Mac has virtualization capibilities. In order to check whether your Mac has virtualization, run the following in your terminal:

> `sysctl kern.hv_support`

You should see a line of output that says `kern.hv_support:` followed by a 1 or a 0.

### `kern.hv_support: 1`

If you see this output, you have virtualization capibility, and you can run the current version of docker from the command line. To install, follow these steps:

1. Go to this website: https://www.docker.com/community-edition

### `kern.hv_support: 0`