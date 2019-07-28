From picoded/ubuntu-openjdk-8-jdk

RUN mkdir -p target
COPY target/* target/

CMD [java -cp target/java-maven-junit-helloworld-2.0-SNAPSHOT.jar com.example.javamavenjunithelloworld.HelloApp]
