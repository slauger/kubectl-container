FROM registry.access.redhat.com/ubi9-minimal:latest

ARG KUBECTL_VERSION=v1.23.4
ARG TARGETARCH

RUN microdnf install -y curl && \
    curl -sLo /usr/local/bin/kubectl \
    "https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/${TARGETARCH}/kubectl" && \
    chmod 0755 /usr/local/bin/kubectl && \
    microdnf clean all
