if [[ `uname` == Darwin ]]; then
  PATH="/opt/homebrew/bin:$PATH"
fi

PATH="$HOME/.local/bin:$PATH"

if [[ -d ~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent ]]; then
  export SSH_AUTH_SOCK=~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
fi

