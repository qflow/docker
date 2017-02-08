FROM qflow/ubuntu-caffe-digits:latest
MAINTAINER Michal Fojtak <mfojtak@seznam.cz>
#ENV http_proxy http://proxy.gtm.lilly.com:9000
#ENV https_proxy http://proxy.gtm.lilly.com:9000
RUN add-apt-repository -y ppa:jonathonf/ffmpeg-3
RUN apt-get update
RUN apt-get install -y --no-install-recommends ffmpeg libav-tools x264 x265

WORKDIR /workspace
RUN git clone https://github.com/qflow/video.git
RUN mkdir video/build
WORKDIR /workspace/video/build
RUN cmake ..
RUN make -j"$(nproc)"

WORKDIR /workspace

