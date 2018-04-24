#! /bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

DATA_URL="https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project"
IMAGE_FILES="dogImages.zip lfw.zip"
PRETRAINED_FILES="DogVGG16Data.npz DogInceptionV3Data.npz DogResnet50Data.npz"

pushd /tmp
for z in ${IMAGE_FILES}; do
    curl -LO ${IMAGE_URL}/${z}
    pushd ${SCRIPT_DIR}
    unzip /tmp/${z}
    popd
done
popd

pushd ${SCRIPT_DIR}/bottleneck_features
for z in ${PRETRAINED_FILES}; do
    curl -LO ${DATA_URL}/{z}
done
popd
