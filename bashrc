base_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

alias vb="vim $base_dir/bashrc"
alias sb='source ~/.bashrc'

alias cdd='conda deactivate'
alias cda='conda activate'
alias cdr='conda env remove -n'
alias cdc='conda create -n'
alias cdl='conda env list'

alias bk='cd /workspace/dev'

alias pg='ps aux | grep'
alias hg='history | grep'
alias ppg='pip list | grep'

alias fd='fdfind'

alias sv='source .venv/bin/activate'
alias da='deactivate'

alias tn='tmux new -s'
alias tl='tmux ls'
alias ta='tmux attach -t'
alias tk='tmux kill-session -t'

alias sudo=''

alias du='du -h --max-depth=1'

function rgr {
  local tmpfile=$(mktemp -t ranger.XXXXXX)
  ranger --choosedir="$tmpfile" "$@"
  if [ -s "$tmpfile" ]; then
    cd "$(cat "$tmpfile")"
  fi
  rm -f "$tmpfile"
}

