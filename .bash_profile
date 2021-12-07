#
# ~/.bash_profile
#

# Add Doom Emacs binaries to PATH
export PATH="$PATH:$HOME/.emacs.d/bin"

# Golang
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export PATH="$PATH:$HOME/go/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
