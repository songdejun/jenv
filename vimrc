" 可视模式 \y → 复制到 tmux 并退出可视模式
vnoremap <silent> <leader>y y:call system("tmux load-buffer -", @")<cr>

" 普通模式 \p → 从 tmux 粘贴
nnoremap <silent> <leader>p :call setreg('"', system("tmux save-buffer -"))<cr>p

" 插入模式 \p → 从 tmux 粘贴
inoremap <silent> <leader>p <c-r>=system("tmux save-buffer -")<cr>

