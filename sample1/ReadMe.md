docker build -t anuruddhal/sample1:1.0.0 .

docker run anuruddhal/sample1:1.0.0

docker run -d anuruddhal/sample1:1.0.0

docker run anuruddhal/sample1:1.0.0

docker run -d -p 9096:9096 anuruddhal/sample1:1.0.0

 curl http://localhost:9096/hello/world