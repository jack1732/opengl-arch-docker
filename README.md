# opengl-arch-docker
Docker Images with Mesa & Nvidia 32-64 bit libraries based on Archlinux

It does work on my laptop with Intel HD Graphics 630 && GTX 1050

'--device=/dev/dri:/dev/dri' in 'run-mesa.sh' will make sense in Mesa Mode

Additional '--device=/dev/nvidia0:/dev/nvidia0' and '--device=/dev/nvidiactl:/dev/nvidiactl' works in Nvidia Mode

start 'run-nvidia.sh' in Nvidia Mode and run 'nvidia-smi' in the host 

It should expore something like 'glxgears' 
