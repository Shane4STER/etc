# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

PROFILE_STARTUP=false
if [[ "$PROFILE_STARTUP" == true ]]; then
    # http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
    PS4=$'%D{%M%S%.} %N:%i> '
    exec 3>&2 2>$HOME/tmp/startlog.$$
    setopt xtrace prompt_subst
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.zsh/oh-my-zsh
export ZSH_CUSTOM=$HOME/.zsh/custom
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"
BULLETTRAIN_CONTEXT_FG="white"
BULLETTRAIN_NVM_FG="black"
BULLETTRAIN_CONTEXT_DEFAULT_USER=$USER
DEFAULT_USER=$USER
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_ORDER=(
    status
    context
    dir
    virtualenv
    nvm
    aws
    go
    custom
    kctx
    git
    hg
    cmd_exec_time
)

BULLETTRAIN_KCTX_KCONFIG=$HOME/.kube/config
BULLETTRAIN_KCTX_BG=blue
BULLETTRAIN_KCTX_FG=white

BULLETTRAIN_DIR_EXTENDED=0
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(docker kubectl helm tmux tmuxinator terraform iterm2 brew aws dircycle vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

EDITOR='vim'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias brew-update='brew update && brew upgrade `brew outdated --quiet`'
alias vtop='vtop --theme=brew'
alias t='todo.sh'
alias week='gcalcli calw 1'
alias wx='curl wttr.in/EDI 2> /dev/null | lolcat'
alias tmux='tmux -2'
alias htop='top' # Because High Sierra 
pb () {
  curl -F "c=@${1:--}" https://ptpb.pw/
}
TRAPUSR1() {
  if [[ -o INTERACTIVE ]]; then
     {echo; echo execute a new shell instance } 1>&2
     exec "${SHELL}"
  fi
}

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

fpath=(/usr/local/share/zsh-completions $fpath)

PATH="$PATH:Library/Python/2.7/bin:$HOME/Library/Python/2.7/bin"

zmodload zsh/complist
bindkey -M menuselect ' ' accept-and-infer-next-history
bindkey -M menuselect '^?' undo


bindkey "\e\e[D" backward-word # alt + <-
bindkey "\e\e[C" forward-word # alt + ->

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ "$PROFILE_STARTUP" == true ]]; then
    unsetopt xtrace
    exec 2>&3 3>&-
fi


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export NVM_DIR="$HOME/.nvm"
alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  # This loads nvm

autoload -U +X bashcompinit && bashcompinit
complete -C /usr/local/Cellar/terraform/0.10.8/bin/terraform terraform

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f $HOME/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . $HOME/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f $HOME/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . $HOME/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
