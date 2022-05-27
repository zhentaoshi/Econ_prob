
# 5/27/2022
# use this image rocker/binder significantly reduces the time
# that binder prepares its image 
# The base binder is too slow when installing packages remotely


# this remote image includes tidyverse
FROM rocker/binder:4.2.0


# download the repo to local and copy it into the new image
# ADD Econ5121A /home/rstudio/Econ5121A


# installing packages remotely is very slow
# RUN R -e "install.packages(c('plyr', 'plm'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

# install R kernel, which is availble from rocker/binder
RUN R -e "IRkernel::installspec()" 

#####################
# the following is copied from https://hub.docker.com/r/rocker/binder


ARG NB_USER
ARG NB_UID

## Copies your repo files into the Docker Container
USER root
COPY . ${HOME}
## Enable this to copy files from the binder subdirectory
## to the home, overriding any existing files.
## Useful to create a setup on binder that is different from a
## clone of your repository
## COPY binder ${HOME}
RUN chown -R ${NB_USER} ${HOME}

## Become normal user again
USER ${NB_USER}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
# in my case I don't need install.R
# instead, I put it into `RUN R -e ...` as it is only one line of command


## to run the image locally, use:
# docker run -it --rm -p 8888:8888 my-image-name jupyter notebook --NotebookApp.default_url=/lab/ --ip=0.0.0.0 --port=8888