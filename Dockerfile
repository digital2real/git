FROM alpine

RUN apk fix
RUN apk --update add git git-lfs less openssh py3-pip && \
    git lfs install && \
    pip3 install git-filter-repo && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*



VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
