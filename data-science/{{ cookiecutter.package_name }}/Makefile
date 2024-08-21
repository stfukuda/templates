default: help

.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  setup   Setup git and the project dependencies"
	@echo "  sync    Synchronize development environments"
	@echo "  update  Update the project dependencies"
	@echo "  check   Run formatters and linters to the source code"
	@echo "  test    Tests and coverage measurements"
	@echo "  docs    Build the project documentation"
	@echo "  build   Build the project to python package"
	@echo "  clean   Clean up generated files"
	@echo "  lab     Launch jupyterlab"

.PHONY: setup
setup:
	@if [ -d .git ]; then \
		echo "Setup is already done."; \
	else \
		if command -v git &> /dev/null; then \
			git init; \
			git commit --allow-empty -m "initial commit"; \
			git checkout -b develop; \
			git add .; \
			git commit -m "add template folder"; \
			poetry install --with dev,test,docs,lab; \
			git add poetry.lock; \
			git commit -m "add poetry.lock"; \
			poetry run pre-commit install; \
			poetry run pre-commit autoupdate; \
			git add .pre-commit-config.yaml; \
			git commit --no-verify -m "update pre-commit hooks revision or tag"; \
		else \
			poetry install --with dev,test,docs,lab; \
		fi; \
		echo "Setup is complete."; \
	fi

.PHONY: sync
sync:
	@poetry install --with dev,test,docs,lab
	@poetry run pre-commit install

.PHONY: update
update:
	@poetry update --with dev,test,docs,lab
	@poetry run pre-commit autoupdate

.PHONY: check
check:
	-@poetry run ruff format ./src ./tests
	-@poetry run ruff check ./src ./tests --fix
	-@poetry run bandit -c pyproject.toml -r ./src ./tests

.PHONY: test
test:
	@poetry run pytest --cov=src --cov-report=term-missing -n 1 tests/

.PHONY: docs
docs:
	@poetry run sphinx-build -b html ./docs/source ./docs/_build

.PHONY: build
build:
	@branch_name=$$(git rev-parse --abbrev-ref HEAD); \
	git checkout main; \
	poetry build; \
	git checkout $$branch_name

.PHONY: clean
clean:
	-@rm -rf .pytest_cache
	-@rm -rf dist
	-@rm -rf htmlcov
	-@find ./ -name "__pycache__" -exec rm -rf {} \;
	-@rm -rf .coverage

.PHONY: lab
lab:
	{% if cookiecutter.use_docker -%}
	@poetry run jupyter lab --allow-root --ip="*" --poert=8888 --no-browser
	{%- else -%}
	@poetry run jupyter lab
	{%- endif %}
