FROM centos:7
RUN yum -y update
RUN yum install java-1.8.0-openjdk -y
ENV JAVA_HOME /usr/lib/jvm/java-openjdk/
RUN export JAVA_HOME 
RUN yum install maven -y
RUN yum install rpm-build -y

