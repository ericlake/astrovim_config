return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  vim.keymap.set("n", "<leader>Tt", ":TestNearest<CR>"),
  vim.keymap.set("n", "<leader>TT", ":TestFile<CR>"),
  vim.keymap.set("n", "<leader>Ta", ":TestSuite<CR>"),
  vim.keymap.set("n", "<leader>Tl", ":TestLast<CR>"),
  vim.keymap.set("n", "<leader>Tg", ":TestVisit<CR>"),
  vim.cmd "let test#strategy = 'neovim'",
  lazy = false,
}
