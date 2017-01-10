FROM nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04
MAINTAINER Michal Fojtak <mfojtak@seznam.cz>
ENV http_proxy http://proxy.gtm.lilly.com:9000
ENV https_proxy http://proxy.gtm.lilly.com:9000
RUN apt-get update
RUN apt-get install -y build-essential cmake git
RUN apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
RUN apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev python-numpy
RUN apt-get install -y --no-install-recommends libboost-all-dev
RUN apt-get install -y libatlas-base-dev
WORKDIR /workspace
RUN git clone https://github.com/BVLC/caffe.git
RUN mkdir caffe/build
WORKDIR /workspace/caffe/build
RUN cmake -DUSE_CUDNN=1 ..
RUN make -j"$(nproc)"
ENV CAFFE_ROOT=/workspace/caffe
ENV PATH $CAFFE_ROOT/build/tools:$PATH
RUN echo "$CAFFE_ROOT/build/lib" >> /etc/ld.so.conf.d/caffe.conf && ldconfig

WORKDIR /workspace

