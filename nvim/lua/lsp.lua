-- lsp.lua
if not vim.lsp or not vim.lsp.configs then
  return  -- nvim-lspconfig not loaded yet
end

local lspconfigs = vim.lsp.configs

-- C / C++
if not lspconfigs.clangd then
  lspconfigs.clangd = {
    default_config = {
      cmd = { "clangd" },
      filetypes = { "c", "cpp", "objc", "objcpp" },
      root_dir = vim.fs.dirname,
      settings = {},
    }
  }
end
vim.lsp.start({ name = "clangd" })

-- Java
if not lspconfigs.jdtls then
  lspconfigs.jdtls = {
    default_config = {
      cmd = { "jdtls" },
      root_dir = vim.fs.dirname,
      settings = {},
    }
  }
end
vim.lsp.start({ name = "jdtls" })
-- Haskell
if not lspconfigs.hls then
  lspconfigs.hls = {
    default_config = {
      cmd = { "haskell-language-server-wrapper", "--lsp" },
      filetypes = { "haskell", "lhaskell" },
      root_dir = vim.fs.dirname,
      settings = {},
    }
  }
end
vim.lsp.start({ name = "hls" })
