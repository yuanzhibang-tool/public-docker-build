docker run \
--rm \
--env REPO_NAME='yuanzhibang/test' \
--env DOCKER_FILE='/tmp/build/Dockerfile' \
--env BUILD_SRC='.' \
--env ARCH='linux/amd64,linux/arm64' \
--volume ~/.docker:/root/.docker \
--volume /var/run/docker.sock:/var/run/docker.sock \
--volume /root/repos/gitlab/docker-work/base_docker/docker-buildx-env/test-Dockerfile:/tmp/build/Dockerfile \
--privileged \
yuanzhibang/cross-image-builder:default