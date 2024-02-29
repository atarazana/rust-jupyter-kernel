# FROM registry.access.redhat.com/ubi8:8.9-1107.1705420509
FROM quay.io/modh/odh-pytorch-notebook@sha256:b733dd081d51d55d96513638aca8820765ffa2dae875a37ed8f0f0528a5ecfc7

USER root

RUN dnf install gcc -y

# Install rust
ENV RUSTUP_HOME /opt/rustup
ENV CARGO_HOME /opt/cargo
RUN mkdir ${RUSTUP_HOME}
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN chown -R 1001:0 ${RUSTUP_HOME} ${CARGO_HOME}

ENV PATH ${PATH}:${CARGO_HOME}/bin

RUN rustup default stable

# Install evcxr_jupyter
RUN cargo install evcxr_jupyter

# Fix permissions to support pip in OpenShift environments \
RUN chmod -R g+w /opt/app-root/lib/python3.9/site-packages && \    
    fix-permissions /opt/app-root -P && fix-permissions /opt/cargo -P

USER 1001:0
RUN evcxr_jupyter --install


