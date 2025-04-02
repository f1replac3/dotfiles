" Filetype Overrides and Filetype Specific Indent Rules


" =============================
" Filetype Assignment Overrides
" =============================
augroup FiletypeOverrides
  autocmd!

  " Explicitly assign the 'vim' filetype for all known Vim config file paths,
  " especially those outside standard locations or with nonstandard filenames.
  autocmd BufRead,BufNewFile 
        \ ~/.vimrc, 
        \ */dot_vimrc,
        \ */chezmoi-edit*/.vimrc,
        \ *.vimrc,
        \ *.vim 
        \ set filetype=vim

  " Assign the 'sh' filetype for common shell config files and scripts.
  autocmd BufRead,BufNewFile
        \ ~/.bashrc,
        \ ~/.zshrc,
        \ ~/.bash_aliases,
        \ ~/.profile,
        \ *.bash, 
        \ *.zsh,
        \ *.sh
        \ set filetype=sh

  " Treat these configuration files and .env files as INI-style using 'dosini'.
  autocmd BufRead,BufNewFile
        \ ~/.tmux.conf,
        \ ~/.gitconfig,
        \ *.env,
        \ .env,
        \ .env.*,
        \ *.ini,
        \ *.conf
        \ set filetype=dosini

  " Desktop entry files follow the .desktop freedesktop.org specification.
  autocmd BufRead,BufNewFile
        \ *.desktop
        \ set filetype=desktop

  " Assign 'systemd' filetype to units and service files if systemd syntax plugin is installed.
  autocmd BufRead,BufNewFile
        \ *.service,
        \ *.unit
        \ set filetype=systemd
augroup END

" ===================
" Indentation Rules
" ===================

augroup VimIndent
  autocmd!
  autocmd FileType vim setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup ShellIndent
  autocmd!
  autocmd FileType sh setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup INIIndent
  autocmd!
  autocmd FileType dosini setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup DesktopIndent
  autocmd!
  autocmd FileType desktop setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup SystemdIndent
  autocmd!
  autocmd FileType systemd setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup MarkdownIndent
  autocmd!
  " Apply 2-space indentation for Markdown and related formats
  autocmd FileType markdown,mdx,markdown.mdx setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup PythonIndent
  autocmd!
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
augroup END

augroup JavaIndent
  autocmd!
  autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
augroup END

augroup KotlinIndent
  autocmd!
  autocmd FileType kotlin setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
augroup END

augroup GoIndent
  autocmd!
  autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab autoindent smartindent
augroup END

augroup RustIndent
  autocmd!
  autocmd FileType rust setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
augroup END

augroup C_CPP_Indent
  autocmd!
  autocmd FileType c,cpp,h,hpp setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent smartindent
augroup END

augroup JSONIndent
  autocmd!
  autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup YAMLIndent
  autocmd!
  autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup WebIndent
  autocmd!
  autocmd FileType html,css,javascript,typescript,tsx,jsx setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup LuaIndent
  autocmd!
  autocmd FileType lua setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup TerraformIndent
  autocmd!
  autocmd FileType terraform,hcl setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup MakeIndent
  autocmd!
  autocmd FileType make setlocal tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
augroup END

augroup DockerIndent
  autocmd!
  autocmd FileType dockerfile setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup CMakeIndent
  autocmd!
  autocmd FileType cmake setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END

augroup VagrantIndent
  autocmd!
  autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent
augroup END
