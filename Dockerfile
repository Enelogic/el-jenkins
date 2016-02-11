FROM jenkins

COPY plugins.txt /usr/share/jenkins/ref/

USER root

RUN apt-get update && apt-get install -y lxc

USER jenkins

RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
