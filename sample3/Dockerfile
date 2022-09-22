FROM ballerina/ballerina:2201.2.0 as builder
COPY service.bal /home/work-dir/
USER root
WORKDIR /home/work-dir/
RUN bal build service.bal

FROM adoptopenjdk/openjdk11:latest
COPY --from=builder /home/work-dir/service.jar /home/ballerina/
EXPOSE  9096
WORKDIR /home/ballerina
CMD java -jar service.jar