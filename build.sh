#!/bin/sh
#docker buildx build --platform linux/amd64 -t bootswithdefer/rpmbuild-amzn2:latest .
#docker buildx build --platform linux/arm64 -t bootswithdefer/rpmbuild-amzn2:latest .
docker buildx build --platform linux/amd64,linux/arm64 -t bootswithdefer/rpmbuild-amzn2:latest --push .
