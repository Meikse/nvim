# nvim configuration

| version     | OS             |
|-------------|----------------|
| `0.9.0-dev` | `pop-os 22.04` |

do not forget to set path to nvim config and make it default editor:
```
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR='nvim'
```

1. init.lua:
initializes all files that will be 

2. /lua :
containes all own config files for setting up
those need to be "required" in the main init.lua file
(subfolder SHOULD be unique to not interfere downloaded plugins)

3. /after :
contains all downloaded plugins config that will be loaded after the init.lua file
tweak and twist raw plugins
(subfolder shall be called plugin, see :h rtp)
you can use /ftplugin to define specific things to files belonging to a certain filetype.
(i guess it works by parsing the name of that plugin, like: python.lua or lua.lua, ...)
https://www.reddit.com/r/neovim/comments/x3zp6t/usage_of_afterftplugin_directory_for/

4. /spell :
contains a list of own spell checks for the aimed languages

Note: 
spell check: is good to correct **while/after** you write a word 
Keyword check: lists all words matching with the word **before** using it.

- if you use ls "ltex" than use 
\usepackage[<language>]{babel}
thus the parser identifies directly which language is shall be evaluated.

## TODO

- disable commenting next line if appending line is a comment (seems to be pretty heavy problem. set formatoptions always changes, no matter if init in /after or doing autocmd..
https://www.reddit.com/r/neovim/comments/pgtdi1/trouble_with_setting_formatoptions_in_lua/

- config lsp for cpp

- (install telescope) / learn netrw
