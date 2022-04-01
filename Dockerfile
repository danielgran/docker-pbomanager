FROM danielgran/debian-base

RUN apt install -y software-properties-common && \
    add-apt-repository -y contrib && \
    add-apt-repository -y non-free && \
    apt update && \
    apt install -y wine wine64