# DO NOT RUN PROJECT UNTIL THIS IS EDITED OR REMOVED (04/16/20)
# Take From https://github.com/docker/compose/blob/master/Dockerfile 
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
FROM ubuntu:16.04
#VOLUME /code
WORKDIR /home
# copy local files into container working directory
COPY . .

RUN apt-get update && apt-get install -y python2.7
RUN apt-get install -y net-tools
RUN apt install -y tcpdump
RUN apt-get install -y iputils-ping
RUN apt-get install -y vim
RUN apt-get install -y python-pip
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get install -y python-matplotlib
RUN apt-get install -y python-pygetdata
RUN mv casperfpga /usr/local/lib/python2.7/dist-packages/
RUN mv katcp /usr/local/lib/python2.7/dist-packages/
RUN mkdir ~/.config/ && mkdir ~/.config/matplotlib/ && \
    cp matplotlibrc ~/.config/matplotlib/ && \
    echo 'export MATPLOTLIBRC=~/.config/matplotlib/matplotlibrc' >> ~/.bashrc

EXPOSE 5000
EXPOSE 6000
