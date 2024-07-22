-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- calling `setup` is optional for customization
      require('fzf-lua').setup {}

      vim.keymap.set('n', '<leader>az', function()
        vim.cmd ':FzfLua'
        -- print 'Fzf files'
        -- require('fzf-lua').files()
      end, { desc = 'Fzf' })

      vim.keymap.set('n', '<leader>af', function()
        require('fzf-lua').files()
      end, { desc = 'Fzf files' })

      vim.keymap.set('n', '<leader>agr', function()
        require('fzf-lua').lsp_references()
      end, { desc = 'Fzf go to references' })

      vim.keymap.set('n', '<leader>agd', function()
        require('fzf-lua').lsp_definitions()
      end, { desc = 'Fzf go to definitions' })

      -- INFO: FZF In currently open buffer
      vim.keymap.set('n', '<leader>a/', function()
        require('fzf-lua').lgrep_curbuf()
      end, { desc = 'Fzf go to definitions' })
    end,
  },
  'sainnhe/gruvbox-material',
  {
    'rebelot/kanagawa.nvim',
    -- priority = 1000,
    -- init = function()
    --   local ayu = {
    --     -- green
    --     green = '#d5ff80',
    --     green2 = '#87d96c',
    --
    --     editor = {
    --       fg = '#cccac2',
    --       bg = '#242936',
    --       line = '#1a1f29',
    --     },
    --     syntax = {
    --       func = '#ffd173',
    --       green = '#d5ff80',
    --       operator = '#f29e74',
    --       constant = '#dfbfff',
    --     },
    --     vcs = {
    --       add = '#87d96c',
    --     },
    --
    --     red = '#ff6666',
    --     pink = '#bf7caf',
    --   }
    --
    --   local kanagawa = require 'kanagawa'
    --   -- kanagawa.setup {
    --   --   colors = {
    --   --     palette = {
    --   --       ayuMirageViolet = ayu.syntax.constant,
    --   --       ayuMirageGreen = ayu.green,
    --   --       ayuMirageGreen2 = ayu.green2,
    --   --       ayuMirageFunction = ayu.syntax.func,
    --   --       ayuMirageOperator = ayu.syntax.operator,
    --   --       ayuMirageRed = ayu.red,
    --   --       ayuMiragePink = ayu.pink,
    --   --     },
    --   --   },
    --   --   overrides = function(colors)
    --   --     return {
    --   --       Comment = { fg = colors.palette.ayuMiragePink },
    --   --       -- Constant = { fg = colors.palette.ayuMirageViolet },
    --   --       String = { fg = colors.palette.ayuMirageGreen },
    --   --       -- Function = { fg = colors.palette.ayuMirageFunction },
    --   --       -- Operator = { fg = colors.palette.ayuMirageOperator },
    --   --
    --   --       -- VCS - Git
    --   --       GitSignsAdd = { fg = colors.palette.ayuMirageGreen2 },
    --   --     }
    --   --   end,
    --   -- }
    --   kanagawa.load 'ayu'
    -- end,
  },
  {
    'Shatur/neovim-ayu',
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    -- init = function()
    --   vim.cmd.colorscheme 'ayu-dark'
    -- end,
  },
  -- 'luisiacc/gruvbox-baby',
  {
    'folke/tokyonight.nvim',
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    -- init = function()
    --   vim.cmd.colorscheme 'tokyonight-moon'
    -- end,
  },
  {
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  -- {
  --   'rmehri01/onenord.nvim',
  -- },
}
