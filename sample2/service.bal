import ballerina/http;
import ballerina/io;

service http:Service /hello on new http:Listener(9096) {
    resource function get world (http:Caller caller) returns error? {
        io:println("Request Recieved");
        check caller->respond("Hello From Docker");
    }
}
