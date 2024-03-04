FROM alpine:3.19.1
WORKDIR /app
COPY ./go1.22.0.linux-amd64.tar.gz /usr/local
RUN tar -C /usr/local -xzf /usr/local/go1.22.0.linux-amd64.tar.gz
RUN rm /usr/local/go1.22.0.linux-amd64.tar.gz
ENV PATH="${PATH}:/usr/local/go/bin"
ENTRYPOINT [ "go", "run", "full-cycle.go"]