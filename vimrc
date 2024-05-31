set relativenumber number
let mapleader = "\ " 
call plug#begin()
	Plug 'bluz71/vim-moonfly-colors'
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'Yggdroot/indentLine'
	Plug 'nelstrom/vim-visual-star-search'
	Plug 'wellle/targets.vim'
	Plug 'nelstrom/vim-visual-star-search'
	Plug 'wellle/targets.vim'
	Plug 'rhysd/clever-f.vim'
	Plug 'tommcdo/vim-lion'
	Plug 'michaeljsmith/vim-indent-object'
	Plug 'chaoren/vim-wordmotion'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'lambdalisue/fern.vim'
	Plug 'lambdalisue/fern-git-status.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'ajh17/VimCompletesMe'
	Plug 'natebosch/vim-lsc'
	Plug 'w0rp/ale'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'janko-m/vim-test'
	Plug 'mbbill/undotree'
	Plug '907th/vim-auto-save'
	Plug 'lifepillar/vim-cheat40'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-projectionist'

	Plug 'joshdick/onedark.vim'                        
        Plug 'tpope/vim-sensible'                              
        Plug 'dart-lang/dart-vim-plugin'          
        Plug 'natebosch/vim-lsc'                 
        Plug 'natebosch/vim-lsc-dart'                         
        Plug 'thosakwe/vim-flutter'                          
        Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
        Plug 'neoclide/coc.nvim'                           
        Plug 'neoclide/coc.nvim', {'branch': 'release'}   
        " Shorthand notation for GitHub; translates to https://

	Plug  'Valloric/YouCompleteMe'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Use release branch (recommended)
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Or build from source code by using npm
	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}

	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'
	Plug 'Neevash/awesome-flutter-snippets'


	Plug 'dense-analysis/ale'
	Plug 'itchyny/lightline.vim'
	Plug 'maximbaz/lightline-ale'


	Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag'

call plug#end()


	"**********************************************************************************
	imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand)'         : '<C-j>'
	imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
	smap <expr> <C-l>   vsnip#available(1)  ? '<plug>(vsnip-expand-or-jump)' : '<c-l>'
	"*****
	imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
	smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

	" Expand or jump
	imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
	smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

	" Jump forward or backward
	imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
	smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
	imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
	smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

	" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
	" See https://github.com/hrsh7th/vim-vsnip/pull/50
	nmap        s   <Plug>(vsnip-select-text)
	xmap        s   <Plug>(vsnip-select-text)
	nmap        S   <Plug>(vsnip-cut-text)
	xmap        S   <Plug>(vsnip-cut-text)

	" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
	let g:vsnip_filetypes = {}
	let g:vsnip_filetypes.javascriptreact = ['javascript']
	let g:vsnip_filetypes.typescriptreact = ['typescript']
	"**********************************************************************************8nnnnnnn
syntax on
colorscheme onedark
let g:lsc_auto_map = v:true
let mapleader = "\<space>"

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <Leader>\ <esc>
nnoremap <Leader>hs <C-w>s
nnoremap <Leader>vs <C-w>v

nnoremap <leader>t :term<cr>
nnoremap <leader>w :q<cr>
nnoremap <leader>s :w<cr>

nnoremap <A-S-h> <C-w><
nnoremap <A-S-l> <C-w>>
nnoremap <A-S-j> <C-w>-
nnoremap <A-S-k> <C-w>+

nnoremap <Leader>tc :tabnew<Cr>
nnoremap <Leader>tq :tabclose<Cr>

nnoremap <Leader>tn :tabnext<Cr>
nnoremap <Leader>tp :tabprevious<Cr>

nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

set relativenumber number
set cursorline


nnoremap <leader>gs :!git status<cr>
nnoremap <leader>ga :!git add .<cr>
nnoremap <leader>gc :!git commit -m "commite number automathic"<cr>
nnoremap <leader>gp :!git push origin main<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"**********************************************************************************8
let g:moonflyIgnoreDefaultColors = 1

highlight! link User1 DiffText
highlight! link User2 DiffAdd
highlight! link User3 Search
highlight! link User4 IncSearch
highlight! link User5 StatusLine
highlight! link User6 StatusLine
highlight! link User7 StatusLine

let g:indentLine_char       = '▏'
let g:indentLine_setConceal = 0

let g:clever_f_across_no_line    = 1
let g:clever_f_fix_key_direction = 1

let g:lion_squeeze_spaces = 1

nmap cw ce
nmap cW cE


let g:fern#disable_default_mappings   = 1
let g:fern#disable_drawer_auto_quit   = 1
let g:fern#disable_viewer_hide_cursor = 1

noremap <silent> <Leader><Leader> :Fern . -drawer -width=35 -toggle<CR><C-w>=
noremap <silent> <Leader>f :Fern . -drawer -reveal=% -width=35<CR><C-w>=
noremap <silent> <Leader>. :Fern %:h -drawer -width=35<CR><C-w>=

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <CR> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> <2-LeftMouse> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> m <Plug>(fern-action-mark:toggle)
  nmap <buffer> N <Plug>(fern-action-new-file)
  nmap <buffer> K <Plug>(fern-action-new-dir)
  nmap <buffer> D <Plug>(fern-action-remove)
  nmap <buffer> C <Plug>(fern-action-move)
  nmap <buffer> R <Plug>(fern-action-rename)
  nmap <buffer> s <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  nmap <buffer> r <Plug>(fern-action-reload)
  nmap <buffer> <nowait> d <Plug>(fern-action-hidden:toggle)
  nmap <buffer> <nowait> < <Plug>(fern-action-leave)
  nmap <buffer> <nowait> > <Plug>(fern-action-enter)
endfunction

augroup FernEvents
  autocmd!
  autocmd FileType fern call FernInit()
augroup END

let g:fern#mark_symbol                       = '●'
let g:fern#renderer#default#collapsed_symbol = '▷ '
let g:fern#renderer#default#expanded_symbol  = '▼ '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = ' '
let g:fern#renderer#default#root_symbol      = '~ '

augroup FernTypeGroup
    autocmd! * <buffer>
    autocmd BufEnter <buffer> silent execute "normal \<Plug>(fern-action-reload)"
augroup END

let g:fern_git_status#disable_ignored    = 1
let g:fern_git_status#disable_untracked  = 1
let g:fern_git_status#disable_submodules = 1

let g:gitgutter_grep                    = 'rg'
let g:gitgutter_map_keys                = 0
let g:gitgutter_sign_added              = '▎'
let g:gitgutter_sign_modified           = '▎'
let g:gitgutter_sign_modified_removed   = '▌'
let g:gitgutter_sign_removed            = '▎'
let g:gitgutter_sign_removed_first_line = '▎'
nmap [g <Plug>GitGutterPrevHunkzz
nmap ]g <Plug>GitGutterNextHunkzz
nmap <Leader>p <Plug>GitGutterPreviewHunk
nmap <Leader>+ <Plug>GitGutterStageHunk
nmap <Leader>- <Plug>GitGutterUndoHunk

set updatetime=100

let g:ale_fixers = {
\  'css':        ['prettier'],
\  'javascript': ['prettier-standard'],
\  'json':       ['prettier'],
\  'ruby':       ['standardrb'],
\  'scss':       ['prettier'],
\  'yml':        ['prettier']
\}
let g:ale_linters = {
\  'css':        ['csslint'],
\  'javascript': ['standard'],
\  'json':       ['jsonlint'],
\  'ruby':       ['standardrb'],
\  'scss':       ['sasslint'],
\  'yaml':       ['yamllint']
\}
let g:ale_linters_explicit = 1
let g:ale_open_list        = 0

let g:ale_fix_on_save              = 1
let g:ale_lint_on_enter            = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave     = 0
let g:ale_lint_on_save             = 1
let g:ale_lint_on_text_changed     = 'never'

imap <expr> <C-j> vsnip#available(1) ? "<Plug>(vsnip-expand-or-jump)" : "<C-j>"
imap <expr> <C-k> vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)"      : "<C-k>"

inoremap <silent> <C-s> <C-r>=SnippetsComplete()<CR>

function! SnippetsComplete() abort
    let wordToComplete = matchstr(strpart(getline('.'), 0, col('.') - 1), '\S\+$')
    let fromWhere      = col('.') - len(wordToComplete)
    let containWord    = "stridx(v:val.word, wordToComplete)>=0"
    let candidates     = vsnip#get_complete_items(bufnr("%"))
    let matches        = map(filter(candidates, containWord),
                \  "{
                \      'word': v:val.word,
                \      'menu': v:val.kind,
                \      'dup' : 1,
                \   }")


    if !empty(matches)
        call complete(fromWhere, matches)
    endif

    return ""
endfunction

nnoremap <silent> <Leader>tt :TestNearest<CR>
nnoremap <silent> <Leader>tf :TestFile<CR>
nnoremap <silent> <Leader>ts :TestSuite<CR>
nnoremap <silent> <Leader>tl :TestLast<CR>
if has("nvim")
    let test#strategy = "neovim"
else
    let test#strategy = "vimterminal"
endif

let test#javascript#jest#executable = 'CI=true yarn test --colors'

let g:undotree_HighlightChangedWithSign = 0
let g:undotree_WindowLayout             = 4
let g:undotree_SetFocusWhenToggle       = 1
nnoremap <Leader>u :UndotreeToggle<CR>

let g:auto_save        = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]

let g:cheat40_use_default = 0

if filereadable('src/App.js')
    " This looks like a React app.
    let g:projectionist_heuristics = {
    \  'src/App.js': {
    \    'src/components/*.js': {
    \      'type': 'component',
    \      'alternate': 'src/__tests__/components/{}.test.js'
    \    },
    \    'src/__tests__/components/*.test.js': {
    \      'type': 'test',
    \      'alternate': 'src/components/{}.js'
    \    },
    \    'src/styles/*.css': {
    \      'type': 'stylesheet',
    \      'alternate': 'src/components/{}.js'
    \    }
    \  }
    \}
    nnoremap <Leader>ec :Ecomponent<Space>
    nnoremap <Leader>es :Estylesheet<Space>
    nnoremap <leader>et :Etest<Space>
    nnoremap <Leader>a  :A<CR>
endif






"******************************************************************
let g:lightline = {}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }

let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ] }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"
