-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "gopls", "lua_ls", "marksman", "pylsp", "ruff_lsp", "rust_analyzer" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "bash-language-server",
        "black",
        "goimports",
        "isort",
        "mdformat",
        "mypy",
        "stylua",
        "terraform-ls",
        "typescript-language-server",
        "jq",
        "prettier",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "codelldb", "debugpy", "python" },
    },
  },
}
