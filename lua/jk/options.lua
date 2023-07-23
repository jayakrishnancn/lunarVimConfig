-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true -- relative line numbers
lvim.format_on_save = true
vim.opt.mouse = ""
vim.opt.mouse = "a"
-- lvim.transparent_window = true

-- keyboard remaps
-- local k_opts = { noremap = true, silent = true }
-- local keymap = vim.api.nvim_set_keymap


-- close all buffers
lvim.keys.normal_mode["<Leader>bca"] = ':%bd!|e #|bd #|normal`"<CR>'

-- Color scheme
lvim.colorscheme = "kanagawa"


-- Enable delete word with Alt + Backspace
vim.api.nvim_set_keymap('i', '<M-Backspace>', '<C-w>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Backspace>', 'db', { noremap = true, silent = true })


lvim.plugins = {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({ --[[ your config ]] })
    end,
  },
  {
    "sainnhe/sonokai"
  },
  {
    "catppuccin/nvim"
  },
  {
    "rose-pine/neovim"
  },
  {
    "navarasu/onedark.nvim"
  },
  {
    "alexvzyl/nordic.nvim"
  },
  {
    "mofiqul/vscode.nvim"
  },
  {
    "sainnhe/gruvbox-material"

  },

  {
    "rebelot/kanagawa.nvim"
  },
  {
    "morhetz/gruvbox"
  },
  {
    "SirVer/ultisnips"
  },
  {
    "mlaursen/vim-react-snippets",
    event = "InsertEnter",
  },
  {
    "mfussenegger/nvim-dap"
  },

}


lvim.builtin.project.manual_mode = true

-- require("luasnip/loaders/from_vscode").lazy_load()
