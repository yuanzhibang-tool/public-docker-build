mount -t binfmt_misc binfmt_misc /proc/sys/fs/binfmt_misc
/scripts/check-buildx-env.sh

# !并发移除或者更换会造成问题
# randomString=`cat /proc/sys/kernel/random/uuid | sed 's/[-]//g' | head -c 20; echo;`
# randomName=cross-builder-$randomString 
docker buildx create --name cross-builder
docker buildx use cross-builder
docker buildx inspect --bootstrap

time=`date '+%Y%m%d%H%M'`

tag=-$TAG_NAME
if [ -z "$TAG_NAME" ]; then
    tag=''
fi


docker buildx build --platform $ARCH -t $REPO_NAME:default$tag -f $DOCKER_FILE $BUILD_SRC --push
docker buildx build --platform $ARCH -t $REPO_NAME:latest$tag -f $DOCKER_FILE $BUILD_SRC --push
docker buildx build --platform $ARCH -t $REPO_NAME:$time$tag -f $DOCKER_FILE $BUILD_SRC --push


# docker buildx rm $randomName || echo "No cross-builder to remove"
