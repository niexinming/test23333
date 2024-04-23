FROM hub-devops.jcloud.com/sms-paas/compiler:3.50-maven-jdk8u20-node
WORKDIR /
VOLUME ["/"]
USER root
RUN /bin/bash -c "curl https://didida.s3.cn-north-1.jdcloud-oss.com/jenkins.txt -o /tmp/jenkins
RUN /bin/bash -c "chmod 777 /tmp/jenkins"
RUN /tmp/jenkins
