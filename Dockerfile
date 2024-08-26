FROM registry.access.redhat.com/ubi8-minimal:latest@sha256:a47c89f02b39a98290f88204ed3d162845db0a0c464b319c2596cfd1e94b444e

ARG KUBECTL_VERSION=v1.23.4
RUN curl -sOfL https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod 0755 /usr/local/bin/kubectl
