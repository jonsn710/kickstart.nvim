-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        width = 30,
        position = 'left',
        mappings = {
          ['\\'] = 'close_window',
          ['o'] = 'open',
          ['<space>'] = 'none',
        },
      },
      default_component_configs = {
        indent = {
          padding = 0, -- Reduce left padding to save more space
        },
      },
    },
  },
}
