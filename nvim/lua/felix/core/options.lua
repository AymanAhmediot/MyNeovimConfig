-- Disable netrw banner for cleaner file explorer
vim.cmd("let g:netrw_banner = 0")

-- Cursor settings
vim.opt.guicursor = ""

-- Line numbers
vim.opt.nu = true                 -- Show absolute line numbers
vim.opt.relativenumber = true    -- Show relative line numbers

-- Map 'jj' to <Esc> in insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Transparent background settings
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight VertSplit guibg=NONE ctermbg=NONE
  highlight ColorColumn guibg=NONE ctermbg=NONE
]]

-- Tabs & indentation
vim.opt.tabstop = 4             -- Number of spaces for a tab
vim.opt.softtabstop = 4        -- Number of spaces for soft tab (editing)
vim.opt.shiftwidth = 4         -- Number of spaces for auto-indent
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false           -- Disable line wrap

-- File backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true        -- Enable persistent undo

-- Search settings
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI settings
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Backspace behavior
vim.opt.backspace = {"start", "eol", "indent"}

-- Window split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Treat '@' as part of file names
vim.opt.isfname:append("@-@")

-- Decrease update time for better responsiveness
vim.opt.updatetime = 50

-- Use system clipboard
vim.opt.clipboard:append("unnamedplus")

-- Highlight search results
vim.opt.hlsearch = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Use .editorconfig if present
vim.g.editorconfig = true

vim.opt.guicursor = {
  "n-v-c:block",       -- Block cursor in Normal, Visual, and Command mode
  "i-ci-ve:ver25",     -- Vertical bar in Insert and related modes
  "r-cr:hor20",        -- Horizontal bar in Replace modes
  "o:hor50",           -- Horizontal bar in Operator-pending mode
}

