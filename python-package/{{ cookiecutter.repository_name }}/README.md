# {{ cookiecutter.project_name }}

{{ cookiecutter.description }}

## Dependencies

This library requires:

- [Python (>={{ cookiecutter.python_version }})](https://www.python.org/)

## Installation

It can be installed as follows using pip:

```shell
pip install -U {{ cookiecutter.module_name }}
```

## Usage

Describe how to use the library in this part.

## Development

Development requires:

- [uv (For Python package and project manager)](https://github.com/astral-sh/uv)
  - Python (>={{ cookiecutter.python_version }})
- [Git](https://git-scm.com/)

### Source code

You can check the latest sources with the command:

```shell
git clone URL
```

### Enviroment

After cloning the repository, you can install the development environment with the command:

```shell
make install
```

### Testing

After installation, you can run the test with the command:

```shell
make test
```

### Submitting a Pull Request

If the test passes, send the pull request according to the format.

## License

[{{ cookiecutter.license }} License](LICENSE)
