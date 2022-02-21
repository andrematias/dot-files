-- Use :help options to see all options :)

local options = {
  fileencoding = "utf-8",
  textwidth = 75,
  shiftwidth = 4,
  tabstop = 4,
  expandtab = true,
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
  cursorline = false,
  number = true,
  signcolumn = "yes",
  wrap = true,
  scrolloff = 8,
  sidescrolloff = 8,
  mouse = "a",
  showmode = false,
  showtabline = 0,
  pumheight = 10,
  hlsearch = true,
  splitbelow = true,
  splitright = true,
  termguicolors = true,
  relativenumber = true,
  background = "dark",
  spell = false,
  spelllang = "pt,en",
  guifont = "Fira Code:h12",
  readonly = false
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

