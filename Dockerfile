FROM nvcr.io/nvidia/tensorflow:23.03-tf1-py3

RUN ["/bin/bash", "-c", "apt-get update"]

RUN ["/bin/bash", "-c", "apt-get -y install openssh-server"]

RUN ["/bin/bash", "-c", "wget -P /workspace https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh "]
