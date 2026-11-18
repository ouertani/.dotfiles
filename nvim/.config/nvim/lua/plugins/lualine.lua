return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Find the filename component in lualine's sections and change its format
      table.insert(opts.sections.lualine_c, {
        "filename",
        path = 3, -- 0 = just filename, 1 = relative path, 2 = absolute path, 3 = absolute path with tilde for home
      })
    end,
  },
}
