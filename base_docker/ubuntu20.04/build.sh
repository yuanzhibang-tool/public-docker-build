REPO_NAME='yuanzhibang/ubuntu20.04'
DOCKER_FILE='Dockerfile'
BUILD_SRC='.'
ARCH='linux/amd64,linux/arm64'


docker buildx build --platform $ARCH -t $REPO_NAME:default -f $DOCKER_FILE $BUILD_SRC --push
docker buildx build --platform $ARCH -t $REPO_NAME:latest -f $DOCKER_FILE $BUILD_SRC --push
docker buildx build --platform $ARCH -t $REPO_NAME:$time -f $DOCKER_FILE $BUILD_SRC --push
