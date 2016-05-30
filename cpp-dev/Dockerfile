FROM gcc
MAINTAINER Jacob Mason "jacob@jacobmason.net"

RUN apt-get update && apt-get install -y libgtest-dev cmake valgrind
WORKDIR "/usr/src/gtest"
RUN cmake CMakeLists.txt && make && ln -s /usr/src/gtest/*.a /usr/lib

