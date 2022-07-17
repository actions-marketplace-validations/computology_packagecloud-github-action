#!/bin/sh -l

echo "PACKAGECLOUD_REPO=${PACKAGECLOUD_REPO}"
echo "PACKAGECLOUD_DISTRO=${PACKAGECLOUD_DISTRO}"
echo "PACKAGE_NAME=${PACKAGE_NAME}"

UPLOAD_PATH="${PACKAGECLOUD_USERNAME}/${PACKAGECLOUD_REPONAME}"

echo "Pushing package: ${PACKAGE_NAME}"
echo "To repository: ${UPLOAD_PATH}"

rvm use 2.7.5 && package_cloud push ${UPLOAD_PATH} ${PACKAGE_NAME}
