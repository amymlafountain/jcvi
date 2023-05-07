FROM gitpod/workspace-python-3.9

# install and configure brew
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
ENV PATH="/home/linuxbrew/.linuxbrew/bin:$PATH" 

# install conda and configure bioconda
RUN brew install --cask anaconda \
    & conda config --add channels defaults \
    & conda config --add channels bioconda \
    & conda config --add channels conda-forge \
    & conda config --set channel_priority strict

RUN conda install lastal

