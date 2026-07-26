source ~/.bashrc

alias ls="ls --color"
alias ll="ls -l"

if [[ -f ~/.docker/init-bash.sh ]]; then
  source ~/.docker/init-bash.sh || true # Added by Docker Desktop
fi

