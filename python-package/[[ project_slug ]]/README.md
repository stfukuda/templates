# [[ project_name ]]

[[ description ]]

## Installation

The package can be installed from PyPI:

```shell
pip install -U [[ module_name ]]
```

## Usage

Describe how to use the library in this part.

## Development

### Prerequisites

- Docker Desktop (or Docker Engine with the Dev Container CLI)
- One of the following:
  - [Visual Studio Code](https://code.visualstudio.com/) with the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
  - The [Dev Container CLI](https://github.com/devcontainers/cli) (`npm install -g @devcontainers/cli`)
- [Just](https://github.com/casey/just) task runner (optional but recommended)

> The Dev Container image installs both `uv` and `just`, so host installation of `just` is only needed if you plan to run the recipes outside the container.

### Getting started (VS Code)

1. Open the repository in VS Code.
2. When prompted, select **“Reopen in Container”** (or run the **Dev Containers: Reopen in Container** command).
3. Wait for the container build to complete. The `postCreateCommand` automatically runs `just setup`, which syncs dependencies and installs pre-commit hooks.

### Getting started (Dev Container CLI)

```shell
devcontainer up --workspace-folder .
devcontainer exec --workspace-folder . just setup
```

Run additional commands as needed, for example `devcontainer exec --workspace-folder . just check`.

### Common workflows (inside the container)

- `just setup` – re-sync dependencies and re-install pre-commit hooks
- `just sync` – refresh the virtual environment using `uv sync`
- `just update` – upgrade locked dependencies and hooks
- `just check` – format & lint/type-check the codebase (Ruff + mypy + Bandit)
- `just test` – execute the test suite with pytest
- `just build` – build distributable artifacts into dist/
- `just --list` – show all available recipes

### Cleaning up

Remove cached artifacts and virtual environments with:

```shell
just clean
```

### Release workflow

- Formal release: create a git tag like `v1.2.3` and push it. GitHub Actions builds the package with `uv build` and publishes it to PyPI using the `PYPI_API_TOKEN` secret.
- Test release: create a pre-release tag such as `v1.2.3-dev.1`. The release workflow publishes the build to TestPyPI using the `TEST_PYPI_API_TOKEN` secret.
- Each release reuses the artifacts produced by the workflow; ensure the secrets are configured before tagging.

## License

[[[ license ]] License](LICENSE)
