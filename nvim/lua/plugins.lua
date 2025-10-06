return {
  -- LSP
  { "neovim/nvim-lspconfig" },

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Theme
  { "catppuccin/nvim", name = "catppuccin" },

  -- Treesitter with rainbow brackets
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "cpp", "java", "haskell" },
      highlight = { enable = true, additional_vim_regex_highlighting = false },
      indent = { enable = true },
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
        colors = { "#E06C75", "#E5C07B", "#98C379", "#56B6C2", "#61AFEF", "#C678DD" },
      },
    })
  end,
},







  -- Fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- File explorer
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
}

