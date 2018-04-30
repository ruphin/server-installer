#!/bin/sh
WORKDIR=$(dirname $(readlink -f $0))
PROJECT=overwebs

set -e

# Update the project from github
if [ ! -d "$WORKDIR/$PROJECT" ]; then
	git clone https://github.com/ruphin/$PROJECT.git "$WORKDIR/$PROJECT"
fi
cd "$WORKDIR/$PROJECT"
git pull

# Build the image locally
make production

set +e

# Deploy
docker stop $PROJECT
docker rm -v $PROJECT
docker run -d --net=local --name=$PROJECT --restart=always ruphin/$PROJECT
