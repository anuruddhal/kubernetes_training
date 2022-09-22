docker build -t anuruddhal/sample2:1.0.0 . --platform linux/amd64

docker run -d -p 9096:9096  anuruddhal/sample2:1.0.0

curl http://localhost:9096/hello/world


docker login

docker push anuruddhal/sample2:1.0.0