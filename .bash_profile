#
# ~/.bash_profile
#

# Add Doom Emacs binaries to PATH
export PATH="$PATH:$HOME/.emacs.d/bin"

# npm: Allow global package installations for the current user
PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"

# Golang
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export PATH="$PATH:$HOME/go/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
