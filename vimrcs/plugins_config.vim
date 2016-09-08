"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
call pathogen#infect('~/.vimrc_d/plugin_sources/{}')
call pathogen#helptags()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="molokai" 
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:syntastic_python_checkers=['pyflakes']



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>
" colorscheme
set background=dark
colorscheme peaksea

" 按F8按钮，在窗口的左侧出现taglist的窗口,像vc的左侧的workpace
nnoremap <silent> <F8> :TlistToggle<CR><CR>
" :Tlist              调用TagList
let Tlist_Show_One_File=0                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

map <silent> <leader>tl :TlistToogle<cr>

if has("cscope")
  set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
  " check cscope for definition of a symbol before checking ctags:
  " set to 1 if you want the reverse search order.
   set csto=1
  
   " add any cscope database in current directory
   if filereadable("cscope.out")
   " cs add cscope.out
   " else add the database pointed to by environment variable
   elseif $CSCOPE_DB !=""
       cs add $CSCOPE_DB
   endif
  
   " show msg when any other cscope db added
   set cscopeverbose
  
   nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
   nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
   nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
   nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
   nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
   nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
   nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
   nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
