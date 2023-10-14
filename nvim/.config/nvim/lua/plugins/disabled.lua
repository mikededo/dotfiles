--- @param name string
local function disable(name)
  return { name, enabled = false }
end

return {
  disable('SmiteshP/nvim-navic'),
  disable('echasnovski/mini.indentscope'),
  disable('echasnovski/mini.pairs'),
  disable('folke/flash.nvim'),
  disable('folke/persistence.nvim'),
  disable('rcarriga/nvim-notify'),
  disable('zbirenbaum/copilot-cmp'),
  disable('zbirenbaum/copilot.lua'),
}
