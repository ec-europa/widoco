FROM alpine
RUN mkdir -p /data && \
  apk add openjdk8-jre && \
  wget https://github.com/dgarijo/Widoco/releases/download/v1.4.6/widoco-1.4.6-jar-with-dependencies.jar -O widoco.jar
COPY widoco /bin/widoco
WORKDIR /data
ENTRYPOINT ["widoco"]
