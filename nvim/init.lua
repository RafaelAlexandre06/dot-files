-- ~/.config/nvim/init.lua
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap lazy.nvim
vim.opt.showmatch = true
vim.opt.matchtime = 2
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("plugins")

-- Load settings, LSP, and keymaps
require("settings")
require("lsp")
require("keymaps")
