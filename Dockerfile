FROM alpine:3

RUN apk add --update --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/community buildah cni-plugins runc iptables ip6tables 
COPY conf/* /etc/containers/
ADD https://raw.githubusercontent.com/containers/skopeo/master/default-policy.json /etc/containers/policy.json