## ============= Zsh Environment ============= ##

# Allow coloring before .zshrc is loaded
autoload -U colors && colors;

# Portage Defaults
export EIX_LIMIT=0

export BROWSER="brave-bin"

# XDG Defaults
export XDG_CACHE_HOME="${HOME}/.local/cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CONFIG_DIRS="/etc/xdg"

# GnuPG Defaults
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"

# History Defaults
export HISTFILE="${ZDOTDIR:-~}/.zhistory"
export HISTSIZE=1000
export SAVEHIST=1000

# Mode Switch Defaults
export KEYTIMEOUT=1

# Less Defaults
export LESSKEY="${XDG_CONFIG_HOME}/less/lesskey"
export LESSHISTFILE="${XDG_CACHE_HOME}/less/history"

export SCREENRC="${XDG_CONFIG_HOME}/screen/screenrc"

# Fzf Defaults
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!**/.git/**'"
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --color=fg:-1,bg:-1,hl:5\
  --color=fg+:4,bg+:0,hl+:5 \
  --color=info:7,prompt:6,pointer:6 \
  --color=marker:3,spinner:3,header:3"

# Git prompt Defaults
ZSH_GIT_PROMPT_SHOW_UPSTREAM="full"
ZSH_GIT_PROMPT_SHOW_STASH=""
ZSH_GIT_PROMPT_ENABLE_SECONDARY=""
ZSH_GIT_PROMPT_NO_ASYNC=""
ZSH_GIT_PROMPT_FORCE_BLANK=""
ZSH_GIT_PROMPT_AWK_CMD=""

# Theming
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[black]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[black]%}]"
ZSH_THEME_GIT_PROMPT_SPATIATOR=" "
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_DETACHED="%{$fg[cyan]%}:"
ZSH_THEME_GIT_PROMPT_DETACHED_PREFIX=""
ZSH_THEME_GIT_PROMPT_DETACHED_SUFFIX=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_BRANCH_PREFIX=""
ZSH_THEME_GIT_PROMPT_BRANCH_SUFFIX=""
ZSH_THEME_GIT_PROMPT_UPSTREAM="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX=" "
ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX=""
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%}↓"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%}↑"
ZSH_THEME_GIT_PROMPT_ACTION="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_ACTION_PREFIX=""
ZSH_THEME_GIT_PROMPT_ACTION_SUFFIX=""
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}="
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[magenta]%}#"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}?"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[black]%}."
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SECONDARY_PREFIX=""
ZSH_THEME_GIT_PROMPT_SECONDARY_SUFFIX=""
ZSH_THEME_GIT_PROMPT_TAGS_SPATIATOR=", "
ZSH_THEME_GIT_PROMPT_TAGS_PREFIX="🏷 "
ZSH_THEME_GIT_PROMPT_TAGS_SUFFIX=""
ZSH_THEME_GIT_PROMPT_TAG="%{$fg[magenta]%}"

# Ls Defaults
LS_STANDARD="no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:\
cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32"

LS_ARCHIVES="*.tar=00;31:*.tgz=00;31:*.arc=00;31:*.arj=00;31:*.taz=00;31:\
*.lha=00;31:*.lz4=00;31:*.lzh=00;31:*.lzma=00;31:*.tlz=00;31:*.txz=00;31:\
*.tzo=00;31:*.t7z=00;31:*.zip=00;31:*.z=00;31:*.dz=00;31:*.gz=00;31:\
*.lrz=00;31:*.lz=00;31:*.lzo=00;31:*.xz=00;31:*.zst=00;31:*.tzst=00;31:\
*.bz2=00;31:*.bz=00;31:*.tbz=00;31:*.tbz2=00;31:*.tz=00;31:*.deb=00;31:\
*.rpm=00;31:*.jar=00;31:*.war=00;31:*.ear=00;31:*.sar=00;31:*.rar=00;31:\
*.alz=00;31:*.ace=00;31:*.zoo=00;31:*.cpio=00;31:*.7z=00;31:*.rz=00;31:\
*.cab=00;31:*.wim=00;31:*.swm=00;31:*.dwm=00;31:*.esd=00;31:*.iso=00;31"

LS_IMAGES="*.jpg=00;35:*.jpeg=00;35:*.mjpg=00;35:*.mjpeg=00;35:*.gif=00;35:*.bmp=00;35:\
*.pbm=00;35:*.pgm=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:\
*.tiff=00;35:*.png=00;35:*.svg=00;35:*.svgz=00;35:*.mng=00;35:*.pcx=00;35"

LS_AUDIO="*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:\
*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36"

LS_VIDEO="*.mov=00;32:*.mpg=00;32:*.mpeg=00;32:*.m2v=00;32:*.mkv=00;32:\
*.webm=00;32:*.ogm=00;32:*.mp4=00;32:*.m4v=00;32:*.mp4v=00;32:*.vob=00;32:\
*.qt=00;32:*.nuv=00;32:*.wmv=00;32:*.asf=00;32:*.rm=00;32:*.rmvb=00;32:\
*.flc=00;32:*.avi=00;32:*.fli=00;32:*.flv=00;32:*.gl=00;32:*.dl=00;32:\
*.xcf=00;32:*.xwd=00;32:*.yuv=00;32:*.cgm=00;32:*.emf=00;32:*.ogv=00;32:*.ogx=00;32"

export LS_COLORS="${LS_STANDARD}:${LS_ARCHIVES}:${LS_AUDIO}:${LS_VIDEO}:${LS_IMAGES}"

# Path Defaults
export PATH="\
/usr/local/bin:\
/usr/local/sbin:\
/usr/local/games:\
/usr/lib/jvm/java-8-oracle/bin:\
/usr/lib/jvm/java-8-oracle/db/bin:\
/usr/lib/jvm/java-8-oracle/jre/bin:\
/usr/bin:\
/usr/sbin:\
/usr/games:\
/bin:\
/sbin:\
/opt/bin:\
/usr/local/go/bin:\
${HOME}/.local/bin:\
${HOME}/.cargo/bin:\
${HOME}/bin"
