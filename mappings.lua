-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- Resizing splits
    ["<A-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
    ["<A-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
    ["<A-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["<A-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- ["<leader>gB"] = { "<cmd>ToggleBlame virtual<cr>", desc = "Toggle git blame" },

    -- Neorg
    ["<leader>N"] = { name = "Neorg" },
    ["<leader>Ni"] = { "<cmd>Neorg index<cr>", desc = "Go to Neorg index file" },

    -- vim-test commands
    ["<leader>T"] = { name = "vim-test" },

    -- Terramate commands
    ["<leader>M"] = { name = "Terramate" },
    ["<leader>Mg"] = { "<cmd>Terramate generate<cr>", desc = "Terramate generate" },
    ["<leader>Ml"] = { "<cmd>Terramate list<cr>", desc = "Terramate list" },
    ["<leader>Mf"] = { "<cmd>TerramateFmt<cr>", desc = "Run Terramatefmt on code" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
