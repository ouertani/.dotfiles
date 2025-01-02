return {
  {
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      config = function()
        local keymap = vim.keymap
        local opts = { noremap = true, silent = true, desc = "Open floating terminal" }
        require("toggleterm").setup({
          open_mapping = [[<c-t>]],
          direction = "float",
          float_opts = {
            border = "double",
            winblend = 20, -- Adjust this value to increase transparency (0-100)
            title_pos = "center",
          },
          keymap.set("n", "<escape>", [[<C-\><C-n>]], opts),
        })
      end,
    },
  },
}
