FROM registry.access.redhat.com/ubi8-minimal:latest@sha256:6ed9271b3d3e7147728afaf8917a936c0db2f1badba59550288c2cc772afb58f

ARG KUBECTL_VERSION=v1.23.4
RUN curl -sOfL https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod 0755 /usr/local/bin/kubectl
