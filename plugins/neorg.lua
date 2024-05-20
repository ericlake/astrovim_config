return {
  "nvim-neorg/neorg",
  dependencies = { "luarocks.nvim" },
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = "*", -- Pin Neorg to the latest stable release
  config = true,
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.keybinds"] = {}, -- Adds default keybindings
      -- ["core.tempus"] = {},
      ["core.ui"] = {},
      -- ["core.ui.calendar"] = {},
      ["core.export"] = {},
      ["core.export.markdown"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      }, -- Enables support for completion plugins
      ["core.journal"] = {}, -- Enables support for the journal module
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/Google Drive/My Drive/Notes",
          },
          default_workspace = "notes",
        },
      },
    },
  },
}

-- return {
--   "nvim-neorg/neorg",
--   build = ":Neorg sync-parsers",
--   dependencies = { "nvim-lua/plenary.nvim" },
--   event = "VeryLazy",
--   opts = {
--     load = {
--       ["core.defaults"] = {}, -- Loads default behaviour
--       ["core.concealer"] = {}, -- Adds pretty icons to your documents
--       ["core.keybinds"] = {}, -- Adds default keybindings
--       -- ["core.tempus"] = {},
--       ["core.ui"] = {},
--       -- ["core.ui.calendar"] = {},
--       ["core.export"] = {},
--       ["core.export.markdown"] = {},
--       ["core.completion"] = {
--         config = {
--           engine = "nvim-cmp",
--         },
--       }, -- Enables support for completion plugins
--       ["core.journal"] = {}, -- Enables support for the journal module
--       ["core.dirman"] = { -- Manages Neorg workspaces
--         config = {
--           workspaces = {
--             notes = "~/Google Drive/My Drive/Notes",
--           },
--           default_workspace = "notes",
--         },
--       },
--     },
--   },
-- }
