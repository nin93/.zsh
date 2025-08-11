setopt auto_cd;

# Enable Ctrl+s Ctrl+q
setopt noflowcontrol;

stty start undef;
stty stop undef;

setopt histignorealldups sharehistory;

[[ -r "${ZDOTDIR:-~}/.zshalias" ]] && {
  source "${ZDOTDIR:-~}/.zshalias";
}

[[ -r "${ZDOTDIR:-~}/.zshfun" ]] && {
  source "${ZDOTDIR:-~}/.zshfun";
}

[[ -r "${ZDOTDIR:-~}/.zshprompt" ]] && {
  source "${ZDOTDIR:-~}/.zshprompt";
}

[[ -r "${ZDOTDIR:-~}/.zshbindkey" ]] && {
  source "${ZDOTDIR:-~}/.zshbindkey";
}

[[ -r "${ZDOTDIR:-~}/.zshcomp" ]] && {
  source "${ZDOTDIR:-~}/.zshcomp";
}

# ====== Antidote ====== #

# Set the root name of the plugins files (.txt and .zsh) antidote will use.
zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins

# Ensure the .zsh_plugins.txt file exists so you can add plugins.
[[ -f ${zsh_plugins}.txt ]] || touch ${zsh_plugins}.txt

# Lazy-load antidote from its functions directory.
fpath=(${ZDOTDIR:-~}/.antidote/functions $fpath)

autoload -Uz antidote

zstyle ':antidote:bundle' use-friendly-names 'yes'

# Generate a new static file whenever .zsh_plugins.txt is updated.
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

# Source your static plugins file.
source ${zsh_plugins}.zsh
