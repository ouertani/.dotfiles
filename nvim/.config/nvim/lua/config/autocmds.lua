-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown", "graphql" },
  callback = function()
    vim.opt.conceallevel = 2
  end,
})
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = { "*" },
  callback = function()
    vim.defer_fn(function()
      vim.cmd("silent! wall")
    end, 4000) -- 1000 ms (1 second) delay
  end,
  nested = true,
})
