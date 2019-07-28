From picoded/ubuntu-openjdk-8-jdk

COPY target/* .

CMD [java -cp ./jb-hello-world-maven-0.1.0.jar hello.HelloWorld]
