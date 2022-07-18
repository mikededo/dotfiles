local M = {}
local overrides = require('custom.plugins')

-- Theme and colors
M.ui = {
  theme = 'onedommed',
  transparency = false,
  hl_override = require('custom.highlights'),
}

-- Plugins configurations
M.plugins = {
  options = {
    separator_line = 'round',
    lspconfig = {
      setup_lspconf = 'custom.plugins.lspconfig',
    },
  },
  override = {
    ['kyazdani42/nvim-tree.lua'] = overrides.nvimtree,
    ['nvim-treesitter/nvim-treesitter'] = overrides.treesitter,
    ['nvim-telescope/telescope.nvim'] = overrides.telescope,
    ['lukas-reineke/indent-blankline.nvim'] = overrides.indent_blankline,
  },
  user = overrides.user,
}

return M