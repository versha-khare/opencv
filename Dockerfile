FROM ubuntu:22.04

# Clone, build and install OpenCV
RUN git clone https://github.com/opencv/opencv.git && \
    cmake install g++ && \
    cd /opencv && mkdir build && cd build && \
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. && \
    cmake --build . -j8 && \  
    rm -rf /opencv
