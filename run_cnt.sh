
# docker exec -itu 0 px4-ros2 bash  // run root

# enable access to xhost from the container
xhost +


# Run docker and open bash shell 
docker run --rm -it --privileged \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
-v "/dev:/dev" \
-v $(pwd)/ros2_ws-src/pkg:/root/ros2_ws/src:rw \
--env="DISPLAY=$DISPLAY" \
--network host \
--name=ov-rs-ros2-foxy ov-rs-ros2-foxy bash


