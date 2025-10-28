# syntax = docker/dockerfile:1.7-labs
ARG PYTHON_VERSION="[[ python_version ]]"
FROM mcr.microsoft.com/devcontainers/python:${PYTHON_VERSION}

USER root

RUN apt-get update \
    && apt-get install --no-install-recommends -y ca-certificates curl git build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://just.systems/install.sh | bash -s -- --to /usr/local/bin

RUN mkdir -p /workspace/.cache/uv && chown -R vscode:vscode /workspace

USER vscode
WORKDIR /workspace

ENV PATH="/home/vscode/.local/bin:${PATH}" \
    UV_CACHE_DIR=/workspace/.cache/uv \
    UV_LINK_MODE=copy \
    UV_PROJECT_ENV=/workspace/.venv

RUN curl -LsSf https://astral.sh/uv/install.sh | sh -s -- -y

CMD ["sleep", "infinity"]
