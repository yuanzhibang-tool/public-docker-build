repo='yuanzhibang/ubuntu20.04'
dockerFile='Dockerfile'
buildSrc='.'
arch='linux/amd64,linux/arm64'
time=`date '+%Y%m%d%H%M'`

docker buildx build --platform $arch -t $repo:default -f $dockerFile $buildSrc --push
docker buildx build --platform $arch -t $repo:latest -f $dockerFile $buildSrc --push
docker buildx build --platform $arch -t $repo:$time -f $dockerFile $buildSrc --push
