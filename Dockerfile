FROM centos:7
RUN yum -y update
RUN yum install java-1.8.0-openjdk -y
ENV JAVA_HOME /usr/lib/jvm/java-openjdk/
RUN export JAVA_HOME
RUN yum install wget -y
RUN wget https://www-us.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp
RUN tar xf /tmp/apache-maven-3.6.3-bin.tar.gz -C /opt
RUN ln -s /opt/apache-maven-3.6.3 /opt/maven
ENV M2_HOME=/opt/maven
ENV MAVEN_HOME=/opt/maven
RUN export M2_HOME
RUN export MAVEN_HOME
RUN export PATH=${M2_HOME}/bin:${PATH}
RUN yum install rpm-build -y