export XDG_CONFIG_HOME="$HOME/.config"
export PATH="${PATH}:${HOME}/go/bin"
unset SSH_AGENT_PID
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/gnupg/S.gpg-agent.ssh"
export PINENTRY_PROGRAM="/sbin/pinentry-rofi"
