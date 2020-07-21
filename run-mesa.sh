#!/bin/bash
xhost +
docker run \
  --rm \
  --device=/dev/dri:/dev/dri \
  --group-add video \
  -e DISPLAY=unix$DISPLAY  -e GDK_SCALE  -e GDK_DPI_SCALE \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /home/conf-docker/archlinux/mirrorlist:/etc/pacman.d/mirrorlist:ro \
  -v /home/conf-docker/archlinux/pacman.conf:/etc/pacman.conf \
  -it yokaiyoukari/opengl-arch glxinfo|grep vendor && glxgears
