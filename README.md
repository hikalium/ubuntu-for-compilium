# ubuntu-for-compilium

Docker image for [compilium](https://github.com/hikalium/compilium) CI.

```
docker run -it <image id>
docker image ls
docker ps
docker build .
docker build --no-cache .
docker tag <image id> hikalium/ubuntu-for-compilium:latest
docker push hikalium/ubuntu-for-compilium:latest
```
