return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              buildScripts = { enable = true },
              allFeatures = true,
            },
            checkOnSave = false,
            procMacro = { enable = true },
          },
        },
      },
    },
  },
}
