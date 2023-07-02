require("meikse")

-- Copilot needs newer version of node (dirty)
vim.env.NEOVIM_NODE_VERSION = 'v16.13.1'

if vim.fn.has('unix') and vim.env.NEOVIM_NODE_VERSION then
    local node_dir = vim.env.HOME .. '/.nvm/versions/node/' .. vim.env.NEOVIM_NODE_VERSION .. '/bin/'
    if (vim.fn.isdirectory(node_dir)) then
        vim.env.PATH = node_dir .. ':' .. vim.env.PATH
    end
end
