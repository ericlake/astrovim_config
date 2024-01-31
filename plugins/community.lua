return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",

  -- Add the ability to quickly see the git blame output
  -- { import = "astrocommunity.git.blame-nvim" },

  -- Add nvim trouble debugging tool
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Add colorschemes.
  { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
}
