# vimrc_d
这是我的vim配置文件
如果为所有的用户配置vim，执行下面两行代码：

git clone https://github.com/tryangel/vimrc_d.git  /home/.vimrc_d

sh /home/.vimrc_d/install_vimrc.sh

如果为特定用户配置vim，执行下面两行代码：

git clone https://github.com/tryangel/vimrc_d.git ~/.vimrc_d

sh ~/.vimrc_d/install_vimrc.sh

然后进入~/.vimrc_d/vimrcs
将call pathogen#infect('/home/.vimrc_d/plugin_sources/{}')改为call pathogen#infect('~/.vimrc_d/plugin_sources/{}')

包含的插件有：

taglist : https://github.com/vim-scripts/taglist.vim.git

Neocomplete : https://github.com/Shougo/neocomplete.vim.git

nerdcommenter : ttps://github.com/scrooloose/nerdcommenter.git

