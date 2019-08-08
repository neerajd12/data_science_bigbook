
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

COPY setup.sh /root/setup.sh
COPY requirements.txt /root/requirements.txt
RUN chmod +x /root/setup.sh && /root/setup.sh && export JAVA_HOME=`update-java-alternatives -l | grep 1.8.0 | awk -F " " {'print $NF'}`
