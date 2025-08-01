vim.o.number = true
vim.o.relativenumber = true

vim.o.termguicolors = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true

vim.o.wrap = false

vim.pack.add({
		{ src = "https://github.com/sainnhe/gruvbox-material" },
        { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

vim.g.gruvbox_material_foreground = 'material'
vim.g.gruvbox_material_transparent_background = 2
vim.cmd.colorscheme('gruvbox-material')

require "nvim-treesitter.configs".setup({
    ensure_installed = { "lua" },
    highlight = { enable = true }
})


