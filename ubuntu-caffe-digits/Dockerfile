FROM qflow/ubuntu-caffe:latest
MAINTAINER Michal Fojtak <mfojtak@seznam.cz>
#ENV http_proxy http://proxy.gtm.lilly.com:9000
#ENV https_proxy http://proxy.gtm.lilly.com:9000
RUN apt-get update
RUN apt-get install -y --no-install-recommends graphviz python-dev python-flask python-flaskext.wtf python-gevent python-h5py python-numpy python-pil python-pip python-protobuf python-scipy

WORKDIR /workspace
RUN git clone https://github.com/NVIDIA/DIGITS.git
RUN pip install -r DIGITS/requirements.txt

