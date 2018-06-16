FROM ubuntu:latest

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y npm git apt-utils
RUN git clone https://github.com/vakili73/StarterProject.git

WORKDIR $HOME/StarterProject

RUN npm install

CMD [ "sails", "lift" ]

EXPOSE 1337