# vim:ft=sh

setopt auto_cd

# Enable Ctrl+s Ctrl+q
setopt noflowcontrol

setopt histignorealldups sharehistory

zdotdir="${ZDOTDIR:-~}"

imports=(.zshalias .zshfun .zshprompt .zshbindkey .zshcomp)

for local_import in "${imports[@]}"; do
	if [[ -r "${zdotdir}/${local_import}" ]]; then
		echo "${zdotdir}/${local_import}"
		source "${zdotdir}/${local_import}"
	fi
done

## Antidote ##

# Set the root name of the plugins files (.txt and .zsh) antidote will use.
zsh_plugins="${zdotdir}/.zsh_plugins"

# Ensure the .zsh_plugins.txt file exists so you can add plugins.
[[ -f "${zsh_plugins}.txt" ]] || touch "${zsh_plugins}.txt"

# Lazy-load antidote from its functions directory.
fpath=(${zdotdir}/.antidote/functions $fpath)

autoload -Uz antidote

zstyle ':antidote:bundle' use-friendly-names 'yes'

# Generate a new static file whenever .zsh_plugins.txt is updated.
if [[ ! "${zsh_plugins}.zsh" -nt "${zsh_plugins}.txt" ]]; then
	antidote bundle <${zsh_plugins}.txt >|${zsh_plugins}.zsh
fi

# Source your static plugins file.
source "${zsh_plugins}.zsh"
