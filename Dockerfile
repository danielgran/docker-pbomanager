FROM danielgran/debian-base


RUN apt install -y software-properties-common && \
    add-apt-repository -y contrib && \
    add-apt-repository -y non-free && \
    add-apt-repository -y non-free && \
    dpkg --add-architecture i386 && \
    apt update && \
    apt install -y wine wine32 wine64 mono-complete && \
    mkdir -p /opt/pbomanager/bin && \
    PATH="$PATH:/opt/pbomanager/bin" && \
    alias pbomanager='mono /opt/pbomanager/bin/PBOConsole.exe'

COPY ./bin /opt/pbomanager/bin