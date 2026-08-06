return {
  -- Add gruvbox-material
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "medium"
      vim.cmd.colorscheme("gruvbox-material dark")
    end,
  },

  -- Tell LazyVim to use gruvbox-material as default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
