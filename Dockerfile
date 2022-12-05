FROM nvidia/cuda:11.5.0-cudnn8-runtime-ubuntu20.04
FROM ubuntu
FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    g++ git wget cmake sudo

RUN git clone https://github.com/opencv/opencv.git && \
    cd /opencv && mkdir build && cd build && \
    cmake -D CMAKE_BUILD_TYPE=Release -D    CMAKE_INSTALL_PREFIX=/usr/local .. && \
    cmake --build . -j8 && \
    cmake install g++  && ldconfig
