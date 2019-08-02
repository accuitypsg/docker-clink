ARG TOMCAT_VER=9.0.22
ARG JAVA_VER=jdk8-openjdk
FROM tomcat:${TOMCAT_VER}-${JAVA_VER}
LABEL maintainer="jay.baylon@accuity.com"

ARG CLINK_VER=37

RUN apt-get update && apt-get install -y \
    vim \
 && rm -rf /var/lib/apt/lists/*

COPY scripts/aliases.sh /etc/profile.d
COPY scripts/setenv.sh /usr/local/tomcat/bin/setenv.sh

COPY tomcat-config/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY tomcat-config/host-manager-context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY tomcat-config/manager-context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

COPY apps/ComplianceLink${CLINK_VER}.war /usr/local/tomcat/webapps/ComplianceLink.war

CMD ["catalina.sh", "run"]

EXPOSE 8080
