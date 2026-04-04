eval "$(/opt/homebrew/bin/brew shellenv zsh)"

eval "$(nodenv init - --no-rehash zsh)"

. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
