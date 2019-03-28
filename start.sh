# This is not the safest way however, as you then compromise the access control to X server on your host
xhost + local:root
docker run -it --env="DISPLAY" --privileged -v /dev:/dev -e QT_X11_NO_MITSHM=1 --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" osrf/ros:kinetic-desktop-full-xenial
# rosagriculture/tractor_sim
export containerId=$(docker ps -l -q)
# Close security hole:
xhost -local:root
