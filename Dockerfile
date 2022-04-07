FROM danielgran/debian-base
ENV PATH="/opt/pbomanager/bin:${PATH}"
COPY ./bin /opt/pbomanager/bin


RUN chmod +x /opt/pbomanager/bin/**/* && \
    ln -s /opt/pbomanager/bin/armake/armake_v0.6.3 /opt/pbomanager/bin/pbomanager