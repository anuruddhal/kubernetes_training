ARG BALLERINA_VERSION=2201.8.4
FROM ballerina/ballerina:${BALLERINA_VERSION} AS bal-builder
USER root
COPY service.bal /home/work-dir/
COPY Ballerina.toml /home/work-dir/
WORKDIR /home/work-dir/
RUN bal build

FROM eclipse-temurin:17-jre-jammy
COPY --from=bal-builder home/work-dir/target/bin/sample1.jar /home/ballerina/
EXPOSE  9096
WORKDIR /home/ballerina
CMD java -jar sample1.jar
