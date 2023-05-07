FROM gitpod/workspace-python-3.9

# download, and build last
RUN git clone https://gitlab.com/mcfrith/last/ && cd last && git checkout 1453 && make

# setup last binaries
RUN sudo cp last/bin/lastal /usr/bin/ && sudo cp last/bin/lastdb /usr/bin/
RUN sudo chmod +x /usr/bin/lastal && sudo chmod +x /usr/bin/lastdb
RUN cd -

# # install and configure miniconda
# RUN curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-py39_23.3.1-0-Linux-x86_64.sh -o /tmp/miniconda.sh
# RUN chmod +x /tmp/miniconda.sh
# RUN bash -c "/tmp/miniconda.sh -b"
# ENV PATH=$PATH:/home/gitpod/miniconda3/bin

# RUN conda config --add channels defaults \
#     & conda config --add channels bioconda \
#     & conda config --add channels conda-forge
#     # & conda config --set channel_priority strict

# RUN conda install -c bioconda last

