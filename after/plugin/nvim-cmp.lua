local cmp = require('cmp')

--https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#luasnip
-- important to use tabbing while completion, only triggers if word is in front
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    --Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({select = false}), 
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
    },

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, 
		{ name = "dictionary",
			keyword_length = 2,
		},
    -- { name = 'spell',
    --   option = {
    --     keep_all_entries = false,
    --     enable_in_context = function()
    --       return true
    --     end,
    --   },
    -- },
  }, {
    { name = 'buffer' },
  }),
})


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
