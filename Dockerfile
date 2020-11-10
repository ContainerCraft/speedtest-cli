FROM registry.access.redhat.com/ubi8/python-38

COPY entrypoint /entrypoint
RUN set -ex \
     && pip install --upgrade pip \
     && pip install speedtest-cli \
    && echo

ENTRYPOINT ["/entrypoint"]
CMD ["--share"]
