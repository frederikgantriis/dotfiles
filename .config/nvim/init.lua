-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Register filetypes
vim.filetype.add({
  extension = {
    tf = "terraform",
    tfvars = "terraform-vars",
    terragrunt = "hcl",
  },
})

-- Override the auto-loaded terraformls configuration
vim.lsp.config("terraformls", {
  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "terraform-vars" },
  root_markers = { ".terraform", ".git" },
  -- Overriding on_attach with a dummy function prevents the default buggy callback from running
  on_attach = function(client, bufnr) end,
})

-- Enable the server natively
vim.lsp.enable("terraformls")
