FROM ubuntu:trusty
MAINTAINER Jacob Mason "jacob@jacobmason.net"
#ORIGINAL MAINTAINER Nic Roland "nicroland9@gmail.com"

# Install lots of packages
RUN apt-get update && apt-get install -y libxcb-keysyms1-dev libxcb-image0-dev \
    libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync0-dev libxcb-xfixes0-dev \
    libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev \
    libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxfixes-dev \
    libxi-dev libxrender-dev libxcb1-dev libx11-xcb-dev libxcb-glx0-dev x11vnc \
    xauth build-essential mesa-common-dev libglu1-mesa-dev libxkbcommon-dev \
    libxcb-xkb-dev libxslt1-dev libgstreamer-plugins-base0.10-dev wget

# Download script
RUN wget http://download.qt.io/official_releases/qt/5.6/5.6.0/qt-opensource-linux-x64-5.6.0.run
RUN chmod +x ./qt-unified-linux-x64-online.run

# Run installer as entrypoint
ENTRYPOINT ./qt-unified-linux-x64-online.run

