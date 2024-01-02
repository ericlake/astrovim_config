return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      sources = {
        "filesystem",
        "buffers",
        "git_status",
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
        follow_current_file = true,
      },
      retain_hidden_root_indent = true,
      enable_git_status = true,
      git_status_async = true,
      window = {
        width = 35,
      },
    },
  },
}
