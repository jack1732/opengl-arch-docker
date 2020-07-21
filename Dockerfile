FROM archlinux

RUN echo '[multilib]' >> /etc/pacman.conf && \
    echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf && \
    pacman -Sy &&\
    pacman --noconfirm -S  mesa mesa-vdpau libva-mesa-driver && \
    pacman --noconfirm -S  lib32-mesa lib32-mesa-vdpau lib32-libva-mesa-driver && \
    pacman --noconfirm -S  nvidia-utils lib32-nvidia-utils && \
    pacman --noconfirm -S  mesa-demos && \
    pacman --noconfirm -Scc && \
    rm -rf /var/lib/pacman/sync/* && \
    rm -rf /var/log/*

