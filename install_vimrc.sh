cd /root/.vimrc_d

rm -f /etc/vim/vimrc

echo 'set runtimepath+=/root/.vimrc_d

source /root/.vimrc_d/vimrcs/basic.vim
source /root/.vimrc_d/vimrcs/plugins_config.vim

' > /etc/vim/vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
