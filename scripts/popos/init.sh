#!/bin/bash

echo '    __               _               '
echo '   / /_  ____  _____(_)_  _____  ___ '
echo '  / __ \/ __ \/ ___/ / / / / _ \/ _ \'
echo ' / / / / /_/ / /  / / /_/ /  __/  __/'
echo '/_/ /_/\____/_/  /_/\__, /\___/\___/ '
echo '                   /____/            '
echo '       __      __  _____ __                       __            '
echo '  ____/ /___  / /_/ __(_) /__  _____   ________  / /___  ______ '
echo ' / __  / __ \/ __/ /_/ / / _ \/ ___/  / ___/ _ \/ __/ / / / __ \'
echo '/ /_/ / /_/ / /_/ __/ / /  __(__  )  (__  )  __/ /_/ /_/ / /_/ /'
echo '\__,_/\____/\__/_/ /_/_/\___/____/  /____/\___/\__/\__,_/ .___/ '
echo '                                                       /_/      '

echo ""
echo ""

WORKSPACE="$HOME/workspace"
DOTFILES="$WORKSPACE/dotfiles"

echo ""
echo "=== 1. $WORKSPACE ディレクトリの作成 ==="
echo ""

mkdir -p $WORKSPACE

echo ""
echo "=== 1. END $WORKSPACE ディレクトリの作成 ==="
echo ""

echo ""
echo "=== 2. dotfiles リポジトリのクローン ==="
echo ""

if [ -d "$DOTFILES" ]; then
	echo "$DOTFILES が既に存在するため、クローンをスキップしました"
else
	git clone https://github.com/horiyee/dotfiles.git "$DOTFILES"
fi

echo ""
echo "=== 2. END dotfiles リポジトリのクローン ==="
echo ""
