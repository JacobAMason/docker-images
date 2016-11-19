FROM osrf/ros:indigo-desktop-full

RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    make \
    tmux \
    vim \
    x11-apps \
    ros-indigo-joy \
    mesa-utils \
    openssh-server

RUN mkdir /var/run/sshd
# RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22

LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /user/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}

CMD ["/usr/sbin/sshd", "-D"]
