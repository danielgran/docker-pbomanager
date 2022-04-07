FROM danielgran/debian-base
ENV PATH="/opt/pbomanager/bin:${PATH}"
COPY ./bin /opt/pbomanager/bin


RUN chmod +x /opt/pbomanager/bin/**/* && \
    ln -s /opt/pbomanager/bin/pboviewer_v1.4.2/PboViewer /opt/pbomanager/bin/pbomanager