local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_mappings = require('custom.plugins.lspconfig.mappings')
local register_wk = require('custom.utils.register-wk')

capabilities.textDocument.completion.completionItem.snippetSupport = false

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap = true, silent = true }

  for _, m in ipairs(lsp_mappings) do
    buf_set_keymap(m.mode, table.concat(m.map), m.cmd, opts)
    register_wk(m.map, m.cmd, m.mode, m.desc)
  end
end

-- Enable signature
require('lsp_signature').setup()

-- require configurations
require('custom.plugins.lspconfig.servers').attach(on_attach)
-- diagnostics
require('custom.plugins.lspconfig.diagnostics').setup()

return {}
