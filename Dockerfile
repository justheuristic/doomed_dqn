FROM justheuristic/agentnet:latest
MAINTAINER Alexander Fritzler <my.personal@gmail.com>


RUN /bin/bash --login -c "\
    source activate rep_py2 && \
    pip install --upgrade pip && \
    pip install gym_pull && \
    pip install ppaquette-gym-doom \
    "
RUN /bin/bash --login -c "\
    source activate jupyterhub_py3 && \ 
    pip install --upgrade pip && \
    pip install gym_pull && \
    pip install ppaquette-gym-doom \
    "
