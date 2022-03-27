local options =  {

  encoding = "UTF-8",
  fileencoding = 'utf-8',
  scrolloff = 8,
  sidescrolloff = 8,
  number = true,
  relativenumber = true,
  signcolumn = "yes",
  colorcolumn = "80",
  cursorline = true,
  tabstop = 2,
  softtabstop = 2,
  shiftround = true,
  shiftwidth =2 ,
  expandtab = true,
  autoindent  = true,
  smartindent = true,
  ignorecase = true,
  smartcase = true,
  hlsearch = true,
  incsearch = true,
  cmdheight = 2,  
  autoread = true,
  wrap = true,        
  hidden = true,
  mouse = "a",          
  backup = false,
  writebackup = false, 
 swapfile = false, 
updatetime = 300,    
conceallevel = 0,        
clipboard = "unnamedplus",     
  timeoutlen = 100,    
   splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true, 
  completeopt = { "menuone", "noselect","menu","noinsert" },
termguicolors = true,
wildmenu = true,
pumheight = 10, 
showtabline = 2,
showmode = false,
guifont = "monospace:h17",

}
vim.opt.shortmess:append "c"
for k, v in pairs(options) do
  vim.opt[k] = v
end
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
