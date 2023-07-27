-- ead the docs: https://www.lunarvim.org/docs/configuration
-- ideo Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- orum: https://www.reddit.com/r/lunarvim/
-- iscord: https://discord.com/invite/Xb9B4Ny
--
require("jk.options")


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


lvim.builtin.nvimtree.setup.filters.dotfiles = true

vim.keymap.set('n', 'la', vim.lsp.buf.code_action)

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
