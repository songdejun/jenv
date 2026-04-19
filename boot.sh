script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

bashrc_path=$script_dir/bashrc
vimrc_path=$script_dir/vimrc
tmuxconf_path=$script_dir/tmux.conf

echo -e "配置文件路径:\nbash: $bashrc_path\nvim: $vimrc_path\ntmux: $tmuxconf_path"

bashrc_cmd="\nsource  $bashrc_path"
vimrc_cmd="\nsource  $vimrc_path"
tmuxconf_cmd="\nsource-file  $tmuxconf_path"

echo -e $bashrc_cmd >> ~/.bashrc
source ~/.bashrc

echo -e $vimrc_cmd >> ~/.vimrc

echo -e $tmuxconf_cmd >> ~/.tmux.conf
