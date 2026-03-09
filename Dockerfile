FROM amazonlinux:latest
RUN yum install java-17-amazon-corretto -y && \
    yum install git -y && \
    yum clean all
COPY jboss-eap-8.1 /opt/jboss-eap-8.1
RUN chmod +x /opt/jboss-eap-8.1/bin/standalone.sh
EXPOSE 9990 8080 8443 8009
CMD ["/opt/jboss-eap-8.1/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
