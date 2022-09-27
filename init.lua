vim.o.relativenumber = true
vim.o.cursorline = true

vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.otabstop = 4
vim.o.expandtab = true
vim.o.scrolloff = 12

require('packer-plugins')
require('_telescope')
require('_autoSave')
require('_gitsigns')
require('_dashboard')
require('_indentLine')
require('_treeSitter')
require('_toggleterm')
require('_nvimcmp')
require('_nvimTree')
require('configs.smart-split')
require('keybindings')
require('colortheme')

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.stylua,
  },
})
-- lsp install tool
require("mason").setup()
require("bufferline").setup{}
