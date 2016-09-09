docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY:unix$DISPLAY -e XAUTHORITY:$XAUTHORITY -v $XAUTHORITY:$XAUTHORITY node:school
