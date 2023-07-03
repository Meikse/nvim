require("meikse")

-- Copilot needs newer version of node (dirty)
vim.env.NEOVIM_NODE_VERSION = 'v16.13.1'

if vim.fn.has('unix') and vim.env.NEOVIM_NODE_VERSION then
    local node_dir = vim.env.HOME .. '/.nvm/versions/node/' .. vim.env.NEOVIM_NODE_VERSION .. '/bin/'
    if (vim.fn.isdirectory(node_dir)) then
        vim.env.PATH = node_dir .. ':' .. vim.env.PATH
    end
end

if vim.fn.has('win32') == 1 then
  vim.keymap.set('n', '<F10>',':e ~/Documents/journal.yaml<cr>')
  -- Windows
  vim.env.HOME = "C:/Users/m.seedorf/"
  vim.env.XDG_CONFIG_HOME = vim.fn.expand('~/AppData/Local/')
  vim.g.python3_host_prog = '~/AppData/Local/Programs/Python/Python311/python.EXE'
  vim.g.lsp_path = '~/AppData/Local/nvim-data/lsp_servers/'
  -- check which shell is currently used with $shellid
  vim.opt.shell = "powershell"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
  vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""

vim.cmd [[
" settings for sumatraPDF
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
]]

end

-- to close netrw after selecting a file
vim.cmd[[let g:netrw_fastbrowse = 0]]

-- exit term insertmode
vim.keymap.set('t', '<esc>','<C-\\><C-n>')
