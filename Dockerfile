#DOCKER VERSION 1.2.0
FROM phusion/baseimage:0.9.14
MAINTAINER Ian Tait <thetaiter@ku.edu>

#INITIAL SETUP
ENV HOME /root

#COPY JIRA
RUN mkdir -p /root/bin
COPY ./bin/atlassian-jira-6.3.7-x64.bin /root/bin/start_atlassian_jira.bin
COPY ./bin/response.varfile /root/bin/response.varfile

#COPY STARTUP SCRIPTS
RUN mkdir -p /etc/my_init.d
COPY ./scripts/startup.sh /etc/my_init.d/startup.sh

#CLEANUP
RUN apt-get -y clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#EXPOSE PORTS
EXPOSE 8080

#USE PHUSION INIT SYSTEM
CMD ["/sbin/my_init"]
