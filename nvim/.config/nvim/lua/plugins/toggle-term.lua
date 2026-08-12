return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-t>]],
        direction = "float",
        float_opts = {
          border = "double",
          winblend = 0,
          title_pos = "center",
        },
      })

      -- Keymaps specifically for when terminal opens
      function _G.set_terminal_keymaps()
        local opts = { buffer = 0, noremap = true, silent = true }

        -- Press Escape inside terminal to switch to normal mode
        vim.keymap.set("t", "<escape>", [[<C-\><C-n>]], opts)
        -- Press Ctrl+t inside terminal to close it
        vim.keymap.set("t", "<C-t>", [[<cmd>ToggleTerm<CR>]], opts)
      end

      vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
    end,
  },
}
