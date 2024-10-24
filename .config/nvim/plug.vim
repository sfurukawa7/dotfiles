let plug_dir = has('nvim') ? '~/.config/nvim/plugged' : '~/.vim/plugged'
call plug#begin(plug_dir)

Plug 'cohama/lexima.vim'
Plug 'nordtheme/vim'
Plug 'preservim/nerdcommenter'

if has("nvim")
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-lua/completion-nvim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'github/copilot.vim'
  Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
  Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
endif

call plug#end()

lua << EOF
require("CopilotChat").setup {
  debug = true, -- Enable debugging
  -- See Configuration section for rest
}
EOF

