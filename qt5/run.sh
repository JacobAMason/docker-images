# Then you can run QtCreator with this monster of a command
docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY -v /dev/shm:/dev/shm -v ~/src:/root --device /dev/dri --name qt_creator --rm --entrypoint /opt/Qt/Tools/QtCreator/bin/qtcreator qt:latest

