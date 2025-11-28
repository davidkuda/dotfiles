return {
  'neovim/nvim-lspconfig',
  dependencies = {
    {
      'SmiteshP/nvim-navbuddy',
      dependencies = {
        'SmiteshP/nvim-navic',
        'MunifTanjim/nui.nvim',
      },
      opts = { lsp = { auto_attach = true } },
      keys = {
        { "<leader>j", "<cmd>Navbuddy<cr>", desc = "Navbuddy" },
      },
    },
  },
}
