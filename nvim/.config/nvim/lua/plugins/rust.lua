return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            cargo = {
              buildScripts = { enable = false },
              allFeatures = true,
              -- Isolate rust-analyzer builds from terminal cargo commands to prevent file lock contention
              targetDir = "target/rust-analyzer",
            },
            check = {
              workspace = false, -- Stops checking the entire workspace at once
            },
            -- checkOnSave = {
            --   command = "check",
            -- },
            checkOnSave = false,
            procMacro = { enable = true },
            files = {
              -- Prevent file watchers from scanning large build artifacts
              excludeDirs = { "target", ".git", ".cargo" },
            },
          },
        },
      },
    },
  },
}
