FROM schemaspy/schemaspy:snapshot

USER root

RUN apk --update --no-cache add \
    python \
    curl

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py |python
RUN pip install awscli

COPY ./entrypoint.sh /

USER java

ENTRYPOINT ["/entrypoint.sh"]