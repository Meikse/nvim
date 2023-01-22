require("cmp_dictionary").setup({
	dic = {
		["*"] = { "/usr/share/dict/words" }, -- simple but sufficient
		spelllang = {
      -- make a link to os dictationaries
      -- $ln --symbolic /usr/share/dict/ngerman de.dict
			en = "$XDG_CONFIG_HOME/nvim/dict/en.dict", 
			de = "$XDG_CONFIG_HOME/nvim/dict/de.dict",
		},
	},
	-- The commented are default values.
	exact = -1,
	first_case_insensitive = true,
	-- document = false,
	-- document_command = "wn %s -over",
	-- async = false, 
	max_items = 10,
	-- capacity = 5,
	-- debug = false
})
