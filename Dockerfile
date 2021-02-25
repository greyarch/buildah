FROM alpine:3

ENV STORAGE_DRIVER "vfs"

RUN apk add --update --no-cache \
    -X http://dl-cdn.alpinelinux.org/alpine/edge/community fuse-overlayfs slirp4netns containers-common \
    -X http://dl-cdn.alpinelinux.org/alpine/edge/testing runc buildah 
COPY registries.conf /etc/containers/registries.conf
ADD https://raw.githubusercontent.com/containers/skopeo/master/default-policy.json /etc/containers/policy.json