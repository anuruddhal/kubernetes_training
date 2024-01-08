import ballerina/http;
import ballerina/log;

service http:Service /hello on new http:Listener(9096) {
    resource function get world() returns string {
        log:printInfo("serving request from world");
        return "Hello, World!";
    }
}
