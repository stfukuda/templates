# Project Templates with Copier

This repository hosts multiple Python-focused project templates maintained with Copier. Each template lives in its own directory and shares a consistent set of questions so you can bootstrap new projects quickly.

## Prerequisites

- Python 3.11+
- `copier` (install with `pipx install copier` or `pip install copier`)

## Templates

- `python-package` - opinionated package skeleton with Hatch, Ruff, pytest, MkDocs, GitHub workflows, and pre-commit hooks.
- `data-science` - data project layout inspired by Cookiecutter Data Science, including notebooks, data staging folders, Typer CLI, and MkDocs documentation.

## Quick Start

1. Decide which template to use (`python-package` or `data-science`).
2. Run Copier, pointing to this repository and the template directory:

   ```bash
   copier copy https://github.com/stfukuda/project-templates.git python-package
   ```

   To control the destination directory explicitly:

   ```bash
   copier copy https://github.com/stfukuda/project-templates.git data-science ~/workspace/my-data-project
   ```

3. Answer the prompts for project metadata (name, description, author, license, minimum Python version).
4. Move into the generated project and follow its `README.md` to finish setup.

## Updating an Existing Project

When template improvements land upstream, update your project with:

```bash
copier update
```

Review the diff and accept, reject, or tweak changes as needed.

## Template Questions

Every template asks for the same fields:

- `project_name`
- `repository_name`
- `module_name`
- `author_name`
- `author_email`
- `description`
- `license`
- `python_version` - choose from 3.11, 3.12, or 3.13

## Documentation

Refer to the Copier documentation for advanced usage such as answers files, automation, or CI integration.

- [Copier CLI guide](https://copier.readthedocs.io/en/stable/)

## License

[MIT License](LICENSE)
