-- Use :help options to see all options :)

local options = {
	fileencoding = "utf-8", 
  shiftwidth = 2,
	expandtab = true,
  tabstop = 2,
  cmdheight = 1,
  swapfile = false,
  undofile = true,
  timeoutlen = 1000,
  clipboard = "unnamedplus",
  backup = false,
  ignorecase = true,
  smartcase = true,
  smartindent = true,
  foldmethod = "manual",
  updatetime = 300,
  writebackup = false,
  cursorline = true,
  number = true,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  mouse = "a",
  showmode = false,
  showtabline = 2,
  pumheight = 10,
  hlsearch = true,
	splitbelow = true,
  splitright = true,
	mouse = "a",
  termguicolors = true,
  relativenumber = true,
  background = "dark",
  spell = false
}

-- Let's iterate this options 
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Some things doesn't go well with for loop
vim.opt.shortmess:append "c"

-- Legacy vim script
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
