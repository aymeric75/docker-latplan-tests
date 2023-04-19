FROM nvcr.io/nvidia/tensorflow:23.03-tf1-py3

RUN ["/bin/bash", "-c", "apt-get update"]

RUN ["/bin/bash", "-c", "apt-get -y install openssh-server"]

RUN ["/bin/bash", "-c", "wget -P /workspace https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh "]

ENV CONDA_DIR /root/anaconda3

RUN /bin/bash /workspace/Anaconda3-2023.03-Linux-x86_64.sh -b -p /root/anaconda3

ENV PATH=$CONDA_DIR/bin:$PATH

RUN echo 'export PATH=/root/anaconda3/bin:$PATH' >> ~/.bashrc
