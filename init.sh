docker build \
--build-arg http_proxy=http://docker.for.mac.localhost:8887 \
--build-arg https_proxy=http://docker.for.mac.localhost:8887 \
-t local/anbox:0.1 .

docker run \
--network host \
--name anbox \
--user root \
--privileged \
-it \
--rm \
local/anbox:0.2 bash






docker build \
--build-arg http_proxy=http://docker.for.mac.localhost:8887 \
--build-arg https_proxy=http://docker.for.mac.localhost:8887 \
-t local/chrome-via-docker:0.1 .


docker run \
-p 5900:5900 \
-e VNC_SERVER_PASSWORD=llllll \
--name chrome-on-docker \
--user root \
--rm \
--privileged local/anbox:0.4 /bin/bash


docker run -tid --name chrome-on-docker --user root --privileged=true local/anbox:0.4 /sbin/init
docker exec -it chrome-on-docker /bin/bash


# ----解决systemctl找不到的问题
docker run -tid --name test_2 --privileged=true ubuntu:16.04 /sbin/init
docker exec -it test_2 /bin/bash
