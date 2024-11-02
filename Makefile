.PHONY: popos/init
popos/init:
	bash scripts/popos/init.sh

.PHONY: popos/vscode/init
popos/vscode/init:
	cat ./templates/vscode/settings.json > ~/.config/Code/User/settings.json

.PHONY: vscode/list-extensions
vscode/list-extensions:
	code --list-extensions

.PHONY: bash/init
bash/init:
	cat ./templates/bash/.bashrc > ~/.bashrc

.PHONY: homebrew/init
homebrew/init:
	sudo apt-get install build-essential
	brew install gcc

.PHONY: ansible/init
ansible/init:
	brew install ansible

.PHONY: ansible/setup
ansible/setup:
	ansible-playbook setup.yml -vv --ask-become-pass

.PHONY: ansible/lint
ansible/lint:
	ansible-playbook setup.yml -vvvv --syntax-check

.PHONY: ansible/check
ansible/check:
	ansible-playbook setup.yml -vv --ask-become-pass --check

.PHONY: ansible/test
ansible/test:
	ansible-playbook setup.yml -vvv --ask-become-pass
