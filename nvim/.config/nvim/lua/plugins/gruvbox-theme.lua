return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    -- Enable italicized comments and keywords (1 = enabled)
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_enable_bold = 1

    -- Background contrast options: "hard", "medium", or "soft"
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "material"

    -- Apply the colorscheme
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
