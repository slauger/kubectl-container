FROM registry.access.redhat.com/ubi8-minimal:latest@sha256:2e4bbb2be6e7aff711ddc93f0b07e49c93d41e4c2ffc8ea75f804ad6fe25564e

ARG KUBECTL_VERSION=v1.23.4
RUN curl -sOfL https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod 0755 /usr/local/bin/kubectl
