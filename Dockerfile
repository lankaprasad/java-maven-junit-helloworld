From picoded/ubuntu-openjdk-8-jdk

RUN mkdir -p target
COPY target/* target/

CMD [java -cp ./jb-hello-world-maven-0.1.0.jar hello.HelloWorld]
