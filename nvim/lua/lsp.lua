-- ~/.config/nvim/lua/lsp.lua
-- Future-proof LSP setup for Neovim >= 0.11

-- Require lspconfig plugin
local lspconfig = require("lspconfig")
local util = lspconfig.util

-- === C/C++ (clangd) ===
lspconfig.clangd.setup({
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = util.root_pattern("compile_commands.json", ".git", "."),
})

-- === Java (jdtls) ===
-- Make sure jdtls is installed and in your PATH
lspconfig.jdtls.setup({
    cmd = { "jdtls" },
    filetypes = { "java" },
    root_dir = util.root_pattern(".git", "pom.xml", "build.gradle"),
})

-- === Haskell (hls) ===
-- Make sure haskell-language-server is installed
lspconfig.hls.setup{
    cmd = { "/home/rafa/.ghcup/bin/haskell-language-server-wrapper", "--lsp" },
    filetypes = { "haskell", "lhaskell" },
    root_dir = lspconfig.util.root_pattern("*.cabal", "stack.yaml", "cabal.project", "hie.yaml"),
    settings = {
        haskell = {
            formattingProvider = "ormolu", -- or "brittany"
        }
    }
}
