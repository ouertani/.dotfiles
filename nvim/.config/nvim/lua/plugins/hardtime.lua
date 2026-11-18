-- lua/plugins/hardtime.lua
return {
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      disable_mouse = true,
      hint = true, -- Show actionable hints when inefficient combinations are detected
      notification = true, -- Display hints as Neovim notifications
      restricted_keys = {
        ["h"] = { "n", "v" },
        ["j"] = { "n", "v" },
        ["k"] = { "n", "v" },
        ["l"] = { "n", "v" },
      },
    },
  },
}
