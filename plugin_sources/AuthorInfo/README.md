#AuthorInfo

This is a mirror of http://www.vim.org/scripts/script.php?script_id=2902

currently version is cloned from https://bitbucket.org/lidashuang/vim-files/raw/66406cfce52a/.vim/bundle/AuthorInfo/plugin/authorinfo.vim

clone it here just for working correctly with vundle.

You can add your author info in any source files,such as cpp,c,java,and c#,python,php,bash....
Like this:

```
/*=============================================================================
#  Author:          dantezhu - http://www.vimer.cn
#  Email:           zny2008@gmail.com
#  FileName:        test2.cpp
#  Description:     
#  Version:         0.0.1
#  LastChange:      2011-02-15 19:32:25
#  History:         
=============================================================================*/
```
when you type <Leader>aid,this will add in the head of your source file,and when you type <Leader>aid again,It will update automatically.

1)you need install The NERD Commenter first.
url is : http://www.vim.org/scripts/script.php?script_id=1218

2)you need some config in vimrc:

```vim
let g:vimrc_author='dantezhu'
let g:vimrc_email='zny2008@gmail.com'
let g:vimrc_homepage='http://www.vimer.cn'

nmap <Leader>aid :AuthorInfoDetect<cr>
```

dantezhu 's homepage is http://www.vimer.cn
