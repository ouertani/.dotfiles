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
            checkOnSave = {
              extraArgs = { "--target-dir", "target/rust-analyzer-check" },
            },
            procMacro = { enable = true },
          },
        },
      },
    },
  },
}
