repo='yuanzhibang/apache2'
dockerFile='Dockerfile'
buildSrc='.'
arch='linux/amd64,linux/arm64'
currentTime=`date '+%Y%m%d%H%M'`

docker buildx build --platform $arch -t $repo:default -f $dockerFile $buildSrc --push
docker buildx build --platform $arch -t $repo:latest -f $dockerFile $buildSrc --push
docker buildx build --platform $arch -t $repo:$currentTime -f $dockerFile $buildSrc --push
