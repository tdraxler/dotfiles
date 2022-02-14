# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

alias json="jq '.'"

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '[%b] '

setopt PROMPT_SUBST
PROMPT='%F{9}%n@%m:%F{14}%2~ %F{10}${vcs_info_msg_0_}$ %f'
