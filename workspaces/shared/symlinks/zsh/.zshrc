export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme

zplug "plugins/catimg", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/vscode", from:oh-my-zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

zplug "djui/alias-tips"
zplug "tarrasch/zsh-bd"

zplug load

# theme
SPACESHIP_CHAR_SYMBOL='❯'
SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_GIT_PREFIX=''
SPACESHIP_PYENV_PREFIX=''

# alias
alias weather="curl wttr.in/Berlin"

# better navigation
d='dirs -v | head -10'
1='cd -'
2='cd -2'
3='cd -3'
4='cd -4'
5='cd -5'
6='cd -6'
7='cd -7'
8='cd -8'
9='cd -9'

# open files with vs code
alias -s py=code

# python
if [[ $OSTYPE == darwin* && ! $CPUTYPE == arm64 ]]; then
  export OPENBLAS=$(brew --prefix openblas)
  export CFLAGS="-falign-functions=8 ${CFLAGS}"
fi

export PATH="$HOME/.poetry/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH=$(pyenv root)/shims:$PATH

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
