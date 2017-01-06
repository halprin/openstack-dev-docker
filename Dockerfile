FROM ubuntu
MAINTAINER halprin

#update the repositories
RUN apt-get update -q

#install python
RUN apt-get install python3.5 -qy
RUN apt-get install python3.4 -qy
RUN apt-get install python3-pip -qy
RUN pip3 install --upgrade pip
RUN apt-get install python -qy
RUN apt-get install python-pip -qy
RUN pip2 install --upgrade pip

#install git
RUN apt-get install git -qy
RUN apt-get install git-review -qy

#install python libraries
RUN pip3 install tox
RUN pip3 install bindep
RUN pip2 install tox
RUN pip2 install bindep

#install OpenStack required libraries
RUN apt-get install libpq-dev -qy
RUN apt-get install gettext -qy
RUN apt-get install libffi6 -qy
RUN apt-get install libffi-dev -qy

#install nice-to-have stuff
RUN apt-get install vim -qy
RUN apt-get install man -qy

RUN mkdir /usr/local/src/openstack/

VOLUME /usr/local/src/openstack/
WORKDIR /usr/local/src/openstack/
ENTRYPOINT ["/bin/bash"]
