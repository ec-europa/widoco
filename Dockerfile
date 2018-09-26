FROM alpine
RUN mkdir -p /data && \
  apk add openjdk8-jre && \
  wget https://github.com/dgarijo/Widoco/releases/download/v1.4.6/widoco-1.4.6-jar-with-dependencies.jar
WORKDIR /data
ENTRYPOINT ["java", "-jar", "/widoco-1.4.6-jar-with-dependencies.jar"]
