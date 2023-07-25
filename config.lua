-- ead the docs: https://www.lunarvim.org/docs/configuration
-- ideo Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- orum: https://www.reddit.com/r/lunarvim/
-- iscord: https://discord.com/invite/Xb9B4Ny
--
require("jk.options")


local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}

lvim.builtin.nvimtree.setup.filters.dotfiles = true
