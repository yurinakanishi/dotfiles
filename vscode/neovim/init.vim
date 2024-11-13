set clipboard+=unnamedplus
inoremap jk <Esc>
set number
set relativenumber
set confirm
set showcmd
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
xnoremap v <C-v>
xnoremap , <Esc>ggVG
nnoremap J 10j
nnoremap K 10k
" nnoremap U <c-r>

" For vanilla neovim
" nnoremap gl gt
" nnoremap gh gT
" For vscode neovim extension
" https://github.com/vscode-neovim/vscode-neovim/issues/837
nnoremap gl <Cmd>:Tabnext<CR>
nnoremap gh <Cmd>:Tabprevious<CR>

" For vanilla neovim
" nnoremap zk zb
" nnoremap zj zt
" For vscode neovim extension
" https://github.com/vscode-neovim/vscode-neovim/issues/179
function s:reveal(direction, resetCursor, restoreVisual)
  if a:restoreVisual
      normal! gv
  endif
  call VSCodeExtensionNotify('reveal', a:direction, a:resetCursor)
endfunction
if exists('g:vscode')
  unmap zt
  unmap zb
  nnoremap <silent> zk :<C-u>call <SID>reveal('top', 0, 0)<CR>
  xnoremap <silent> zk :<C-u>call <SID>reveal('top', 0, 1)<CR>
  nnoremap <silent> zj :<C-u>call <SID>reveal('bottom', 0, 0)<CR>
  xnoremap <silent> zj :<C-u>call <SID>reveal('bottom', 0, 1)<CR>
endif

nnoremap tl <c-]>
nnoremap th <c-t>
" nnoremap gk :tabedit
" nnoremap gj :bdelete
" nnoremap gJ :bdelete!
language en_US