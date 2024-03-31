-- File: lua/custom/plugins/filetree.lua

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    opts = {
        window = {
          position = 'right',
        }
    },
    config = function ()
      require('neo-tree').setup {}
    end,

    keys = {
      {
          '<Space>n',
          function()
              require('neo-tree.command').execute({
                  toggle = true,
                  source = 'filesystem',
                  position = 'right',
              })
          end,
          desc = 'Filesystem (root dir)',
       },
  },
  
  }