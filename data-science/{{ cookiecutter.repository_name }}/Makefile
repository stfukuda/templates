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
	@echo "  lab     Launch jupyterlab"
	@echo "  build   Build the project's python package"
	@echo "  docs    Build the project documentation"
	@echo "  serve   Serve locally documentation"
	@echo "  clean   Clean up generated files"

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
			git tag v0.1.0;\
			uv sync --group lint --group lab --group docs --no-cache; \
			git add uv.lock _version.py; \
			git commit -m "run 'uv sync' to initialize project's synchronization"; \
			uv run pre-commit install; \
			uv run pre-commit autoupdate; \
			git add .pre-commit-config.yaml; \
			git commit --no-verify -m "update pre-commit hooks revision or tag"; \
		else \
			uv sync --group lint --group lab --group docs --no-cache; \
		fi; \
		echo "Setup is complete."; \
	fi

.PHONY: sync
sync:
	@uv sync --group lint --group lab --group docs --no-cache
	@uv run pre-commit install

.PHONY: update
update:
	@uv lock --no-cache
	@uv run pre-commit autoupdate

.PHONY: check
check:
	-@uv run ruff format ./src
	-@uv run ruff check --fix ./src
	-@uv run bandit -c pyproject.toml -r ./src

.PHONY: lab
lab:
	@uv run jupyter lab

.PHONY: build
build:
	@branch_name=$$(git rev-parse --abbrev-ref HEAD); \
	git checkout main; \
	uv build; \
	git checkout $$branch_name

.PHONY: docs
docs:
	@uv run mkdocs build

.PHONY: serve
serve:
	@uv run mkdocs serve

.PHONY: clean
clean:
	-@find ./ -type f -name "*.py[co]" -delete
	-@find ./ -type d -name "__pycache__" -delete
