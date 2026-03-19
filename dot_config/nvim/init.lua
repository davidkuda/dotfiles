require("options")
require("keymaps")
require("autocmds")
require("lazy_plugins")
require("custom")
require("netrw")

-- local lsp = require("lspconfig")

-- lsp.basedpyright.setup({
-- 	settings = { python = { analysis = { typeCheckingMode = "basic" } } },
-- })

-- require("lspconfig").basedpyright.setup{
-- 	cmd = { vim.fn.getcwd() .. "/.venv/bin/basedpyright-langserver", "--stdio" },
-- 	settings = {
-- 		basedpyright = {
-- 			python = { venvPath = ".", venv = ".venv" }
-- 		}
-- 	}
-- }

--
-- lsp.ruff.setup({
-- 	cmd = { vim.fn.getcwd() .. "/.venv/bin/ruff" },
-- 	init_options = { settings = { logLevel = "error" } },
-- })

-- vim.lsp.enable("basedpyright")

vim.lsp.config['ruff'] = {
  -- Command and arguments to start the server.
  cmd = { 'ruff', 'server' },
  -- Filetypes to automatically attach to.
  filetypes = { 'python' },
  -- Sets the "workspace" to the directory where any of these files is found.
  -- Files that share a root directory will reuse the LSP server connection.
  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
  root_markers = { 'pyproject.toml', '.git' },
  -- Specific settings to send to the server. The schema is server-defined.
  -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  -- settings = {
  --   Lua = {
  --     runtime = {
  --       version = 'LuaJIT',
  --     }
  --   }
  -- }
}


vim.lsp.enable('ruff')
