return {
  'nvim-neorg/neorg',
  dependencies = { 'luarocks.nvim' },
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  config = true,
  opts = {
    load = {
      ['core.defaults'] = {},
      ['core.ui'] = {},
      ['core.autocommands'] = {},
      ['core.storage'] = {},
      -- ['core.tempus'] = {},
      -- ['core.ui.calendar'] = {},
      ['core.concealer'] = {
        config = {
          fold = true,
          icon_preset = 'basic',
          init_open_folds = 'auto',
        },
      },
      ['core.dirman'] = {
        config = {
          workspaces = {
            codex = '~/Codex',
          },
          default_workspace = 'codex',
          index = 'index.norg',
        },
      },
    },
  },
}

