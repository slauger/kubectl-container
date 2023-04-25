FROM registry.access.redhat.com/ubi8-minimal:latest@sha256:987ae81ce046652ee4a2c3df54dad5e82faa1b078dab5d09f7cfaae11784ed30

ARG KUBECTL_VERSION=v1.23.4
RUN curl -sOfL https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod 0755 /usr/local/bin/kubectl
