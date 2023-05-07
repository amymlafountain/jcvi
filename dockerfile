FROM gitpod/workspace-python-3.9

# install and configure miniconda
RUN curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-py39_23.3.1-0-Linux-x86_64.sh -o /tmp/miniconda.sh
RUN chmod +x /tmp/miniconda.sh
RUN bash -c "/tmp/miniconda.sh -b"
ENV PATH=$PATH:/home/gitpod/miniconda3/bin

RUN conda install lastal

