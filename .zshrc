export PATH="$HOME/bin:$PATH"

# load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# format vcs_info variable
zstyle ':vcs_info:git:*' formats '%F{green}(%b)%f'

# set up the prompt
setopt PROMPT_SUBST
PROMPT='%F{blue}%2~%f${vcs_info_msg_0_} $ '

# load autocompletion
autoload -Uz compinit && compinit

# Color ls
export CLICOLOR=1
alias ll="ls -l"
alias la="ls -a"
