FROM rhel7:latest

# Adobe CQ 5.5 SP3. JRE 1.7 is supported, but it's been tested on JRE 1.6, so
# we'll use that.
# For Adobe CQ 5.5 JVM Compatibility see:
# https://docs.adobe.com/docs/en/cq/5-5/deploying/technical_requirements.html#Java%20Virtual%20Machines
RUN yum -y install --disablerepo=* --enablerepo=rhel-7-server-rpms java-1.6.0-openjdk && yum clean all
RUN mkdir /data

# Install CQ AEM.
ADD http://p9cpwp00003art.corp.ad.ctc/artifactory/generic-dev-local/cq5-publish-p4503.jar /aem-publisher/
ADD files/license.properties /aem-publisher/

# CQ Stuff
ENV JAVA_HOME /usr/lib/jvm/jre-1.6.0-openjdk.x86_64
ENV AEM_HOME /aem-publisher
ENV CQ_FOREGROUND y
ENV CQ_VERBOSE    y
ENV CQ_NOBROWSER  y

#VOLUME /app/aem
#ADD http://10.18.26.125/aem-content.tar.gz /app/content/

WORKDIR /aem-publisher

EXPOSE 4503

# CMD /bin/bash -c java -Xmx1536M -jar cq5-publish-p4503.jar -port 4503 -r publish nosamplecontent
