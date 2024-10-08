" Description: Keymaps

" <Leader>
let mapleader = ' '

nnoremap <S-C-p> "0p Delete without yank
" nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Select all
nnoremap <Leader>a gg<S-v>G

" Delete a word backwards
" nnoremap dw vb"_d

" jjをESCキーに対応
inoremap <silent> jj <ESC>

" Remove search highlight
nnoremap <Esc> :noh<CR>

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Save and Quit
nnoremap <Leader>s :w<Return>
nnoremap <Leader>q :wq<Return>
nnoremap <Leader>Q :q!<Return>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Window

" Split window
" nmap ss :split<Return><C-w>w
" nmap sv :vsplit<Return><C-w>w

" Move window
" nmap <Space> <C-w>w
" map s<left> <C-w>h
" map s<up> <C-w>k
" map s<down> <C-w>j
" map s<right> <C-w>l
nmap <Leader>h <C-w>h
nmap <Leader>k <C-w>k
nmap <Leader>j <C-w>j
nmap <Leader>l <C-w>l

" Close window
nmap <Leader>x <C-w>c

" Return to the previous file
" nmap sr <C-^>

" Resize window
" nmap <C-w><left> <C-w><
" nmap <C-w><right> <C-w>>
" nmap <C-w><up> <C-w>+
" nmap <C-w><down> <C-w>-
