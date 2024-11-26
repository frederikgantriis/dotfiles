-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.cmd("LetItSnow")
  end,
})
