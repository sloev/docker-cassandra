# java
#
# VERSION       Cassandra 2.x

# use the centos base image provided by dotCloud
FROM mashape/docker-java7
MAINTAINER Marco Palladino, marco@mashape.com

ENV CASSANDRA_VERSION 2.0.12-1

# adding repo to yum
RUN echo -e "[datastax]\nname = DataStax Repo for Apache Cassandra\nbaseurl = http://rpm.datastax.com/community\nenabled = 1\ngpgcheck = 0" > /etc/yum.repos.d/datastax.repo

# installing Cassandra
RUN yum -y install dsc20-$CASSANDRA_VERSION cassandra20-$CASSANDRA_VERSION

EXPOSE 22 8888 7000 7001 7199 7199 9042 9160
