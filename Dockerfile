FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        ca-certificates \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path

WORKDIR /workspace
COPY ./Cargo.toml ./Cargo.toml
COPY ./library/ ./library/
COPY ./tools/ ./tools/

ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo install --path ./tools/aw-execute --root /workspace
