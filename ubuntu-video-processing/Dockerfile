FROM qflow/ubuntu-caffe:latest
MAINTAINER Michal Fojtak <mfojtak@seznam.cz>
#ENV http_proxy http://proxy.gtm.lilly.com:9000
#ENV https_proxy http://proxy.gtm.lilly.com:9000
WORKDIR /workspace
RUN apt update && apt install -y software-properties-common && add-apt-repository -y ppa:jonathonf/ffmpeg-3 && \
    apt update && apt install -y --no-install-recommends ffmpeg libavfilter-dev libavdevice-dev libavcodec-dev libav-tools x264 x265 && \
    mkdir /tools && git clone https://github.com/qflow/video.git && mkdir video/build
ENV PATH=$PATH:/tools
WORKDIR /workspace/video/build
#RUN cmake -DCMAKE_INSTALL_PREFIX=/tools .. && make -j"$(nproc)" install

WORKDIR /workspace

