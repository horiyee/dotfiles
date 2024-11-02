.PHONY: popos/init
popos/init:
	bash scripts/popos/init.sh

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
