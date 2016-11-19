xhost +local:root
nvidia-docker run -it \
    --user=$(id -u) \
    --env="DISPLAY" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -env="QT_X11_NO_MITSHM=1" \
    -v /home/jacob:/home/jacob \
    -w="/home/jacob/stateSpaceRobotics/robot2017" \
    -p 22 \
    ros:indigo-fixes
xhost -local:root
