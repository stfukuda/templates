# Project Templates with Copier

This repository hosts multiple Python-focused project templates maintained with Copier. Each template lives in its own directory and shares a consistent set of questions so you can bootstrap new projects quickly.

## Prerequisites

- Python 3.11+
- `copier` (see the [official installation guide](https://copier.readthedocs.io/en/stable/getting-started/#installation))

## Templates

- `python-package` - opinionated package skeleton with Hatch, Ruff, pytest, uv, Dev Container setup, and pre-commit hooks.
- `data-science` - data project layout inspired by Cookiecutter Data Science, including notebooks, data staging folders, Typer CLI, and MkDocs documentation.

## Quick Start

1. Run the command below in the directory where you want the project (follow the interactive prompt to choose a template):

   ```bash
   copier copy gh:stfukuda/templates my-new-project
   ```

2. Answer the remaining questions (project name, description, license, etc.) and follow the generated project's `README.md` to finish setup.

## Updating an Existing Project

When template improvements land upstream, update your project with:

```bash
copier update
```

Review the diff and accept, reject, or tweak changes as needed.

## Documentation

Refer to the Copier documentation for advanced usage such as answers files, automation, or CI integration.

- [Copier CLI guide](https://copier.readthedocs.io/en/stable/)

## License

[MIT License](LICENSE)
