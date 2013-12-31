FROM ubuntu:12.04
MAINTAINER Benjamin van der Veen <b@bvanderveen.com>

EXPOSE 80
VOLUME ["/var/python-packages"]

RUN apt-get install -y python2.7 python-setuptools
RUN easy_install pip

RUN pip install pypiserver

cmd ["pypi-server", "-p", "80", "/var/python-packages"]