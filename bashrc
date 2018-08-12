# Enable tab completion
source ~/git-completion.bash

# colors!
black="\[\033[0;30m\]"
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
yellow="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
cyan="\[\033[0;36m\]"
light_gray="\[\033[0;37m\]"
dark_gray="\[\033[0;90m\]"
light_red="\[\033[0;91m\]"
light_green="\[\033[0;92m\]"
light_yellow="\[\033[0;93m\]"
light_blue="\[\033[0;94m\]"
light_purple="\[\033[0;95m\]"
light_cyan="\[\033[0;96m\]"
white="\[\033[0;97m\]"
reset="\[\033[0m\]"



# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$light_blue\u$green\$(__git_ps1)$yellow \W $ $reset"

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# added by Miniconda3 installer
export PATH="/home/maha/miniconda3/bin:$PATH"

# added by Miniconda3 installer
export PATH="/home/maha/miniconda3/bin:$PATH"
