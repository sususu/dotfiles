# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "$HOME/dotfiles/scripts/common/utils.sh"

: "${ZDOTDIR:=~/.zsh}"

function source_zsh_script() {
  local name="$1"
  source "$HOME/dotfiles/zsh/$name.zsh"
}

# Language
## 日本語ファイル名を表示可能にする
setopt print_eight_bit

# 単語の区切り文字を指定
autoload -Uz select-word-style
select-word-style default
## ここで指定した文字は単語区切りとみなされる
## / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# Workaround for GUI app which doesn't get /etc/paths
export PATH="$PATH:$(cat /etc/paths | xargs | tr " " :)"

# Lib
source_zsh_script common
source_zsh_script complete
source_zsh_script history
source_zsh_script keybinding
source_zsh_script os
source_zsh_script settings
source_zsh_script alias
source_zsh_script git
# source_zsh_script fzf
# source_zsh_script vim
# source_zsh_script python

if [ -f "$(brew --prefix)/etc/brew-wrap" ]; then
  source "$(brew --prefix)/etc/brew-wrap"
fi

# source_if_exists "$ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
# if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/google-cloud-sdk/path.zsh.inc"; fi
# if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

source_if_exists "$(brew --prefix asdf)/libexec/asdf.sh"

# Bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh

# vim:set ft=zsh:
