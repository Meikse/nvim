# nvim configuration

version: 0.9.0-dev
os: pop-os 22.04



├── after
│   └── plugin
│       └── CONFIG
├── init.lua
├── lua
│   └── meikse
│       ├── init.lua
│       ├── packer.lua
│       └── set.lua
├── plugin
│   └── packer_compiled.lua
├── README.md
└── spell
    ├── de.utf-8.add
    └── de.utf-8.add.spl


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

4. /spell :
containes a comprehensive list of spell checks for the aimed languages
