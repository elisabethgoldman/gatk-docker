FROM ubuntu:artful-20171019

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

RUN apt-get update \
    && apt-get install -y \
       openjdk-8-jre-headless \
       unzip \
       wget \
    && apt-get clean \
    && wget https://github.com/broadinstitute/gatk/releases/download/4.0.0.0/gatk-4.0.0.0.zip \
    && unzip gatk-4.0.0.0.zip \
    && mv gatk-4.0.0.0/* /usr/local/bin/ \
    && rm -rf gatk* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*