require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "cpp", "java", "haskell" },
  highlight = { enable = true },
  indent = { enable = true },
}

-- Load Nvim Tree
require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
    },
  },
  git = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,  -- keeps tree open when opening files
    },
  },
})

-- Autocomplete
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
  })
})

vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd.colorscheme("catppuccin")
