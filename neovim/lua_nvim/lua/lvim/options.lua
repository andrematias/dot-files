-- Use :help options to see all options :)

local options = {
  laststatus = 0,
  cmdheight = 0,
  showtabline = 0,
  fileencoding = "utf-8",
  shiftwidth = 4,
  tabstop = 4,
  expandtab = true,
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
  pumheight = 10,
  hlsearch = true,
  splitbelow = true,
  splitright = true,
  termguicolors = true,
  relativenumber = true,
  background = "dark",
  spell = false,
  spelllang = "pt,en",
  guifont = "FiraCode NF:h10",
  readonly = false,
  linebreak = true,
  showbreak = '  ',
  textwidth = 100,
  showmatch = true,
}

-- Let's iterate this options
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Some things doesn't go well with for loop
vim.opt.shortmess:append "c"
vim.wo.colorcolumn = '100'

-- Legacy vim script
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

