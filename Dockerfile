FROM alpine:3.19

RUN mkdir /opt; cd /opt; \
    wget https://aka.ms/download-jdk/microsoft-jdk-17.0.9-alpine-x64.tar.gz \
    && tar zxf microsoft-jdk-17.0.9-alpine-x64.tar.gz \
    && ln -s jdk-17.0.9+8 java \
    && rm -f microsoft-jdk-17.0.9-alpine-x64.tar.gz

ENV JAVA_HOME=/opt/java
ENV PATH="$PATH:$JAVA_HOME/bin"