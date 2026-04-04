.ONESHELL:
SHELL := /bin/bash

.PHONY: macos/vscode/init
macos/vscode/init:
	cat templates/vscode/settings.json > ~/Library/Application\ Support/Code/User/settings.json

.PHONY: vscode/list-extensions
vscode/list-extensions:
	code --list-extensions

.PHONY: uv/install
uv/install:
	curl -LsSf https://astral.sh/uv/install.sh | sh

.PHONY: uv/update
uv/update:
	uv self update

.PHONY: uv/python/install
uv/python/install:
	uv python install 3.12

.PHONY: ansible/init
ansible/init:
	uv venv --clear --seed
	uv pip install ansible

.PHONY: ansible/setup
ansible/setup:
	uv run ansible-playbook setup.yml -vv --ask-become-pass

.PHONY: ansible/check
ansible/check:
	uv run ansible-playbook setup.yml --check --diff

.PHONY: ansible/lint
ansible/lint:
	uv run ansible-playbook setup.yml -vvvv --syntax-check

.PHONY: init
init: home-manager/init

.PHONY: home-manager/init
home-manager/init:
	nix run home-manager/master -- switch --flake .

.PHONY: home-manager/switch
home-manager/switch:
	home-manager switch --flake .

.PHONY: nixpkgs/update
nixpkgs/update:
	nix flake update nixpkgs

.PHONY: home-manager/update
home-manager/update:
	nix flake update home-manager

.PHONY: home-manager/uninstall
home-manager/uninstall:
	home-manager uninstall
