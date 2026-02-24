FROM registry.access.redhat.com/ubi8-minimal:latest@sha256:6ed9271b3d3e7147728afaf8917a936c0db2f1badba59550288c2cc772afb58f

ARG KUBECTL_VERSION=v1.23.4
ARG TARGETARCH

RUN microdnf install -y curl && \
    curl -sLo /usr/local/bin/kubectl \
    "https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/${TARGETARCH}/kubectl" && \
    chmod 0755 /usr/local/bin/kubectl && \
    microdnf clean all
