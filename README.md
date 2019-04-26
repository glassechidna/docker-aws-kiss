# Docker hosted Docker + AWS CLI

Simple image useful for building Docker images and pushing the result to Amazon ECR. Nothing fancy.

## Build

```sh
docker build . \
  --label org.label-schema.build-date=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
  --label org.label-schema.vcs-ref=$(git rev-parse --short HEAD) \
  --tag glassechidna/docker-aws-kiss
```

