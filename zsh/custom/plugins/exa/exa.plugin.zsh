if (( $+commands[exa] )); then
  alias ls=exa
  alias ll='exa -l --git --time-style=long-iso'
  alias tree='exa -T'
fi
