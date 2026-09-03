FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.cargo/bin:${PATH}"

RUN apt-get update \
    && apt-get install -y curl ca-certificates build-essential \
    && rm -rf /var/lib/apt/lists/*
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path

WORKDIR /workspace

COPY ./Cargo.toml ./Cargo.toml
COPY ./library/ ./library/
COPY ./tools/ ./tools/

RUN cargo install --path ./tools/aw-execute --root /workspace
