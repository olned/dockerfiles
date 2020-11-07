FROM olned/gcc:9

# spdlog
RUN apt-get update && apt-get -y install libsystemd-dev wget cmake
RUN wget https://github.com/gabime/spdlog/archive/v1.5.0.tar.gz \
    && tar -xzf v1.5.0.tar.gz \
    && cd spdlog-1.5.0 && mkdir build && cd build && cmake .. && make -j && make install
RUN rm v1.5.0.tar.gz
