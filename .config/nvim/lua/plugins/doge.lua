return {
  "kkoomen/vim-doge",
  -- 1. Ensure the engine is actually installed
  build = ":call doge#install()",
  -- 2. Load only when a file is opened
  event = "BufReadPost",
  init = function()
    -- 3. Disable the plugin's internal (often broken) mapping logic
    vim.g.doge_enable_mappings = 0
  end,
  config = function()
    -- 4. Set your preferred doc standards
    vim.g.doge_doc_standard_python = "google"
    vim.g.doge_doc_standard_javascript = "jsdoc"
  end,
  keys = {
    -- 5. Map to the <Plug> command directly
    { "<leader>dg", "<Plug>(doge-generate)", desc = "Generate Documentation" },
    -- Optional: Jump between placeholders
    { "<C-j>", "<Plug>(doge-comment-jump-forward)", desc = "Doge Jump Forward" },
    { "<C-k>", "<Plug>(doge-comment-jump-backward)", desc = "Doge Jump Backward" },
  },
}
