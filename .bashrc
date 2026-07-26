# PATH setup
if [[ `uname` == Darwin ]]; then
  PATH="/opt/homebrew/bin:$PATH"
fi
PATH="$HOME/.local/bin:$PATH"

# use secretive ssh-agent
if [[ -d ~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent ]]; then
  export SSH_AUTH_SOCK=~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
fi

# vi
export EDITOR=vim
set -o vi

# aliases
alias ls="ls --color"
alias ll="ls -l"
if [[ `uname` == Darwin ]]; then
  alias chrome='open -a "Google Chrome" --args'
fi

# docker
if [[ -f ~/.docker/init-bash.sh ]]; then
  source ~/.docker/init-bash.sh || true # Added by Docker Desktop
fi

