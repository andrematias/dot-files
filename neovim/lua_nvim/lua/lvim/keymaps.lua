-- local term_opts = { silent = true }
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("", "<Space>", "<Nop>", opts)

-- Normal mode
-- To telescope
local has_telescope, _ = pcall(require, "telescope")
if has_telescope then
  keymap(
    "n",
    "<leader>f",
    "<cmd>lua require('telescope.builtin').find_files()<cr>",
    opts
  )
  keymap(
    "n",
    "<leader>g",
    "<cmd>lua require('telescope.builtin').live_grep()<cr>",
    opts
  )
  keymap(
    "n",
    "<leader>b",
    "<cmd>lua require('telescope.builtin').buffers()<cr>",
    opts
  )
end


-- To windows navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)


-- Resize with arrow keys
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)


-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- Close current buffer 
keymap("n", "<leader>c", ":bdelete<CR>", opts)


-- Insert mode
-- Option to esc with jk or kj
keymap("i", "kj", "<Esc>", opts)
keymap("i", "jk", "<Esc>", opts)


-- Visual mode
-- Indent mode in Visual mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Move selected lines
keymap("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "K", ":move '<-2<CR>gv-gv", opts)


-- Visual Block mode
-- Move selected lines
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

