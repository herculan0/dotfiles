if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$HOME/.local/bin:$PATH
export ZSH="/home/herculano/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="true"

powerline-daemon -q
source /home/herculano/.local/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=3

# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git colored-man-pages zsh-completions)

source $ZSH/oh-my-zsh.sh


export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

##### ACERT COMMANDS #####
## limpar falhas nas teiqs ##
alias peteleco="/home/herculano/Dev/acert/peteleco.sh"

# Example aliases 

alias zshconfig="vim ~/.zshrc" 
#alias ohmyzsh="vim ~/.oh-my-zsh"
#### MY ALIASES ##
alias pacman="sudo pacman"
alias updatedb="sudo updatedb"
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias v='vim'
alias touchpad='sudo vim /etc/X11/xorg.conf.d/30-touchpad.conf'
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'
alias sc='systemctl'
alias zshreload='source $HOME/.zshrc'
alias dkc='docker-compose'
alias i3config='vim $HOME/.config/i3/config'
alias reboot='sudo reboot'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias smpptest='sh $HOME/Dev/acert/smpp.sh'
alias kubectl='sudo kubectl'
alias barreiro_vpn='sudo openvpn --config /home/herculano/Downloads/barreiro.tls.key &'
alias vimrc="vim ~/.vimrc"
alias dotfiles='/usr/bin/git --git-dir=/home/herculano/.dotfiles/ --work-tree=/home/herculano'
alias gs='git status'
alias gp='git pull'
alias gb='git branch'
alias ga='git add .'
alias gc='git commit -m $1'
alias gpo='git push origin $1'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


source /usr/share/nvm/init-nvm.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/herculano/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/herculano/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/herculano/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/herculano/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /home/herculano/Dev/z/z.sh


export DENO_INSTALL="/home/herculano/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

source /home/herculano/.local/bin/activate.sh


