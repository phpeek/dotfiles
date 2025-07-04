-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Jump to start/end of line using the home row keys
vim.keymap.set("", "H", "^")
vim.keymap.set("", "L", "$")

-- Center cursor after page up/down
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Duplicate line and comment above
vim.keymap.set("n", "yc", "yygccp", { desc = "Duplicate line and comment above", remap = true })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- ObjectID generator
vim.keymap.set("n", "<leader>oi", function()
  local handle = io.popen("node ~/.local/scripts/objectid-generator/index.js")
  if handle == nil then
    return
  end

  local result = handle:read("*a")
  handle:close()

  -- Trim trailing newline
  result = result:gsub("\n$", "")

  -- Insert at cursor
  vim.api.nvim_put({ result }, "c", true, true)
end)
