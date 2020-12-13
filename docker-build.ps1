$VERSION="latest"
docker build -t $VERSION .
docker run --rm --entrypoint tar $VERSION -c /usr/bin/ct Dockerfile.build-alpine `
    | docker build -f Dockerfile.build-alpine --tag quay.io/coreos/ct:$VERSION .
#docker tag quay.io/coreos/ct:$VERSION quay.io/coreos/ct:latest-dev
