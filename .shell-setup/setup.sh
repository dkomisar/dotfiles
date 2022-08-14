# base directory for shell scripts
SETUP_DIR=$HOME/.shell-setup
COMPLETION_DIR=$SETUP_DIR/completion

# make sure shell config directory is valid
if [[ ! -d $SETUP_DIR ]]; then
  echo "shell config directory $SETUP_DIR does not exist"
  exit 0
fi

# get name of shell
if [[ -d /proc ]]; then
  SHELL_CMD=$(basename $(readlink /proc/$$/exe))
else
  SHELL_CMD=$(ps -o comm= $$)
fi

# execute scripts
if [[ -e $SETUP_DIR/all ]]; then
  source $SETUP_DIR/all
fi
if [[ -e $SETUP_DIR/zsh && $SHELL_CMD == *zsh ]]; then
  source $SETUP_DIR/zsh
fi
if [[ -e $SETUP_DIR/bash && $SHELL_CMD == *bash ]]; then
  source $SETUP_DIR/bash
fi

# cleanup
unset COMPLETION_DIR
unset SETUP_DIR
unset SHELL_CMD
