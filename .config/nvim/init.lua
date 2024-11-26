-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
  callback = function()
    vim.cmd("LetItSnow")
  end,
})
