# 補完機能を有効にする
autoload -Uz compinit && compinit

# 小文字でも大文字ディレクトリ、ファイルを補完できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 色の設定
export CLICOLOR=1
export TERM=xterm-256color

# nvimのエイリアス設定
alias vim='nvim'
