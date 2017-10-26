FROM ubuntu:artful-20171019

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

RUN apt-get update \
    && apt-get install -y \
       openjdk-9-jre-headless \
       unzip \
       wget \
    && apt-get clean \
    && wget https://github.com/broadinstitute/gatk/releases/download/4.beta.6/gatk-4.beta.6.zip \
    && unzip gatk-4.beta.6.zip \
    && mv gatk-4.beta.6/* /usr/local/bin/ \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*