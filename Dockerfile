FROM ubuntu:18.04

RUN apt-get update \
	&& apt-get install -y wget curl libxml-libxml-perl

RUN wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.10.0/sratoolkit.2.10.0-ubuntu64.tar.gz -O /tmp/sratoolkit.tar.gz \
	&& tar zxvf /tmp/sratoolkit.tar.gz -C /opt/ && rm /tmp/sratoolkit.tar.gz

ENV PATH="/opt/sratoolkit.2.10.0-ubuntu64/bin/:${PATH}"

