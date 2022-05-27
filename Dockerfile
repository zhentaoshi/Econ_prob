FROM rocker/binder:4.2.0

# download the repo to local
# ADD Econ5121A /home/rstudio/Econ5121A

# installing packages remotely is very slow
# RUN R -e "install.packages(c('plyr', 'plm'), dependencies=TRUE, repos='http://cran.rstudio.com/')"

RUN python3 -m pip install --no-cache-dir notebook jupyterlab
# RUN pip install --no-cache-dir jupyterhub

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
    
    
# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
