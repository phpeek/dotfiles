--------------------------------------------------------------------------------
-- phpeek configuration initialization script
--------------------------------------------------------------------------------

-- map leader before everything
require('phpeek.leader')

-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- setup plugins folder
require('lazy').setup('phpeek.plugins')
require('phpeek.config')
-- require('phpeek.packer')
require('phpeek.options')
require('phpeek.keymaps')
-- require('phpeek.remap')
require('phpeek.wsl-clipboard')

