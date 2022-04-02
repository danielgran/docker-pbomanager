FROM danielgran/debian-base
ENV PATH="/opt/pbomanager/bin:${PATH}"
COPY ./bin /opt/pbomanager/bin

RUN chmod +x /opt/pbomanager/bin/* && \
    ln -s /opt/pbomanager/bin/JAPM_Linux_x86_64_v0_8 /opt/pbomanager/bin/pbomanager