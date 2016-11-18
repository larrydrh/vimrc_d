#=============================================================================
#     FileName: install_vimrc_all.sh
#         Desc:  
#       Author: renhuan.ding
#        Email: renhuan.ding@feixun.com
#      Version: 0.0.1
#   LastChange: 2016-11-18 15:38:02
#      History:
#=============================================================================
cd /home/.vimrc_d

rm -f /etc/vim/vimrc

echo 'set runtimepath+=/home/.vimrc_d

source /home/.vimrc_d/vimrcs/basic.vim
source /home/.vimrc_d/vimrcs/plugins_config.vim

' > /etc/vim/vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
