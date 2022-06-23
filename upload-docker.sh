IMAGE_NAME=teest
USERNAME=sofusalbertsen
echo $GITHUB_TOKEN | docker login ghcr.io -u $USERNAME --password-stdin

docker build -f sample-packages/docker/Dockerfile -t $IMAGE_NAME .

docker tag $IMAGE_NAME ghcr.io/$USERNAME/$IMAGE_NAME:latest

docker push ghcr.io/$USERNAME/$IMAGE_NAME:latest
