#!/bin/sh

ssh -o StrictHostKeyChecking=no travis@$DIGITAL_OCEAN_IP_ADDRESS << ENDSSH
    docker stop docker-react
    docker rm docker-react
    docker image prune -a -f
    echo "Tag to be deployed:"
    echo $VERSION
    docker run --name docker-react -p 3003:80 -d ymtangab/docker-react:$VERSION
ENDSSH