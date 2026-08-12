return {
  {
    "sainnhe/everforest",
    lazy = true,
    priority = 1000,
    init = function()
      vim.g.everforest_background = "soft"
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    opts = {
      theme = "lotus",
    },
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      variant = "dawn",
    },
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    priority = 1000,
    opts = {
      options = {
        transparent = false,
      },
    },
  },
  {
    "NLKNguyen/papercolor-theme",
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "latte",
      color_overrides = {
        latte = {
          base = "#ffffff",
          mantle = "#f8f9fa",
          crust = "#f1f3f5",
        },
      },
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
      },
    },
  },
  {
    "oskarnurm/koda.nvim",
    priority = 1000,
    -- REMOVED: vim.cmd("colorscheme koda") so it stops hijacking the theme on startup
  },
  {
    "aonemd/quietlight.vim",
    priority = 1000,
  },
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    opts = {
      style = "light",
      transparent = false,
      italic_comments = true,
      disable_nvimtree_bg = false,
      group_overrides = {
        LineNr = { fg = "#237893" },
        CursorLine = { bg = "#f3f3f3" },
        CursorLineNr = { fg = "#0b216f", bold = true },
      },
    },
  },

  -- ==========================================
  -- Active Colorscheme Configuration
  -- ==========================================
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Force dark background mode for Gruvbox
      vim.o.background = "dark"

      -- Contrast options: "hard", "medium", or "soft"
      vim.g.gruvbox_material_enable_italic = 0
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"

      -- Custom crisp color overrides
      vim.g.gruvbox_material_custom_colors_override = {
        grey0 = { "#a89984", "246" },
        grey1 = { "#928374", "245" },
        fg0 = { "#fbf1c7", "229" },
      }

      -- Explicitly apply colorscheme
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
