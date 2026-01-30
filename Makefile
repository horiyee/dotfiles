.ONESHELL:
SHELL := /bin/bash

.PHONY: macos/vscode/init
macos/vscode/init:
	cat templates/vscode/settings.json > ~/Library/Application\ Support/Code/User/settings.json

.PHONY: vscode/list-extensions
vscode/list-extensions:
	code --list-extensions

.PHONY: uv/init
uv/init: uv/install uv/python/install

.PHONY: uv/install
uv/install:
	curl -LsSf https://astral.sh/uv/install.sh | sh

.PHONY: uv/python/install
uv/python/install:
	uv python install 3.14

.PHONY: ansible/init
ansible/init:
	uv venv --clear
	. .venv/bin/activate && uv pip install ansible

.PHONY: ansible/setup
ansible/setup:
	uv run ansible-playbook setup.yml -vv --ask-become-pass

.PHONY: ansible/check
ansible/check:
	uv run ansible-playbook setup.yml --check --diff

.PHONY: ansible/lint
ansible/lint:
	uv run ansible-playbook setup.yml -vvvv --syntax-check
