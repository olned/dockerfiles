FROM olned/boost:1.71

# spdlog
RUN apt-get update && apt-get -y install libsystemd-dev
RUN wget https://github.com/gabime/spdlog/archive/v1.5.0.tar.gz \
    && tar -xzf v1.5.0.tar.gz \
    && cd spdlog-1.5.0 && mkdir build && cd build && cmake .. && make -j && make install
RUN rm v1.5.0.tar.gz

# uriparser
RUN apt-get update && apt-get -y install liburiparser-dev
