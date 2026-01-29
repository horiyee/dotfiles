.PHONY: macos/vscode/init
macos/vscode/init:
	cat templates/vscode/settings.json > ~/Library/Application\ Support/Code/User/settings.json

.PHONY: vscode/list-extensions
vscode/list-extensions:
	code --list-extensions
