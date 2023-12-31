-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.relativenumber = true -- relative line numbers
lvim.format_on_save = true
lvim.builtin.project.manual_mode = true
vim.opt.mouse = ""
vim.opt.mouse = "a"
lvim.builtin.lualine.style = "default" -- or "none"
-- lvim.transparent_window = true

lvim.builtin.nvimtree.setup.filters.dotfiles = true

-- // code action remap
vim.keymap.set('n', 'la', vim.lsp.buf.code_action)
-- close all buffers
--
lvim.keys.normal_mode["<Leader>bca"] = ':%bd!|e #|bd #|normal`"<CR>'



-- Color scheme
lvim.colorscheme = "kanagawa"


-- Enable delete word with Alt + Backspace
vim.api.nvim_set_keymap('i', '<M-Backspace>', '<C-w>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Backspace>', 'db', { noremap = true, silent = true })


lvim.plugins = {
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },

  {
    "jose-elias-alvarez/typescript.nvim"
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
      })
    end
  },
  -- {
  --   'wfxr/minimap.vim',
  --   build = "cargo install --locked code-minimap",
  --   -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
  --   config = function()
  --     vim.cmd("let g:minimap_width = 10")
  --     vim.cmd("let g:minimap_auto_start = 1")
  --     vim.cmd("let g:minimap_auto_start_win_enter = 1")
  --   end,
  -- },
  -- {
  --   "windwp/nvim-spectre",
  --   event = "BufRead",
  --   config = function()
  --     require("spectre").setup()
  --   end,
  -- },

  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      -- vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
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
    "SirVer/ultisnips"
  },
  {
    "mlaursen/vim-react-snippets",
    event = "InsertEnter",
  },
  {
    "mfussenegger/nvim-dap"
  },
  -- {
  --   'Wansmer/treesj',
  --   keys = { '<space>m', '<space>j', '<space>s' },
  --   dependencies = { 'nvim-treesitter/nvim-treesitter' },
  --   config = function()
  --     require('treesj').setup({ --[[ your config ]] })
  --   end,
  -- },
  --  -- color schemes
  -- {
  --   "sainnhe/sonokai"
  -- },
  -- {
  --   "catppuccin/nvim"
  -- },
  -- {
  --   "rose-pine/neovim"
  -- },
  -- {
  --   "navarasu/onedark.nvim"
  -- },
  {
    "alexvzyl/nordic.nvim"
  },
  {
    "rebelot/kanagawa.nvim"
  },

  {
    "xiantang/darcula-dark.nvim"
  },
  {
    "echasnovski/mini.hues"
  },
  {
    "folke/tokyonight.nvim"
  },
  {
    "artanikin/vim-synthwave84"
  },
  {
    "rigellute/shades-of-purple.vim"
  },
  {
    "franbach/miramare"
  },
  {
    "jacoborus/tender.vim"
  },
  {
    "sainnhe/gruvbox-material"
  },
  {
    "junegunn/seoul256.vim"
  },
  {
    "sainnhe/everforest"
  },
  {
    "altercation/vim-colors-solarized"
  }
}



-- require("luasnip/loaders/from_vscode").lazy_load()
--
vim.opt.spelllang = "en_us"
vim.opt.spell = true


local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  -- {
  --   -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --   command = "eslint_d",
  --   filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "svelte" }
  --   ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  -- },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "svelte" }
  },
}



local linters = require "lvim.lsp.null-ls.linters"
linters.setup {

  {
    command = "eslint", filetypes = { "typescript", "typescriptreact" },

  }
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    command = "eslint", filetypes = { "typescript", "typescriptreact" },

  }
}
