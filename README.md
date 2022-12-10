# nvim configuration

version: 0.9.0-dev
os: pop-os 22.04

1. init.lua:
initializes all files that will be 

2. /lua :
containes all own config files for setting up
those need to be "required" in the main init.lua file
(subfolder SHOULD be unique to not interfere downloaded plugins)

3. /after :
containes all downloaded plugins config that will be loaded after the init.lua file
tweak and twist raw plugins
(subfolder shall be called plugin, see :h rtp)
- you can use /ftplugin to define specific things to files belonging to a certain filetype.
(i guess it works by parsing the name of that plugin, like: python.lua or lua.lua, ...)
https://www.reddit.com/r/neovim/comments/x3zp6t/usage_of_afterftplugin_directory_for/

4. /spell :
containes a comprehensive list of spell checks for the aimed languages

## TODO

- disable commenting next line if appending line is a comment (seems to be pretty heavy problem. set formatoptions always changes, no matter if init in /after or doing autocmd..
https://www.reddit.com/r/neovim/comments/pgtdi1/trouble_with_setting_formatoptions_in_lua/

- supertabbing
- instant completion

- lualine

- config lsp

- (install telescope)
