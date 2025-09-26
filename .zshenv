# vim:ft=sh

### Zsh Environment ###

export BROWSER="brave-bin"

# XDG Defaults
export XDG_CACHE_HOME="${HOME}/.local/cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CONFIG_DIRS="/etc/xdg"

# GnuPG Defaults
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# Less Defaults
export LESSKEY="${XDG_CONFIG_HOME}/less/lesskey"
export LESSHISTFILE="${XDG_CACHE_HOME}/less/history"

export SCREENRC="${XDG_CONFIG_HOME}/screen/screenrc"
