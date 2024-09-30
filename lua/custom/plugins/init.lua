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
      end, { desc = 'Fzf' })

      vim.keymap.set('n', '<leader>asf', function()
        require('fzf-lua').files()
      end, { desc = 'Search in files' })

      vim.keymap.set('n', '<leader>agr', function()
        require('fzf-lua').lsp_references()
      end, { desc = 'Go to references' })

      vim.keymap.set('n', '<leader>agd', function()
        require('fzf-lua').lsp_definitions()
      end, { desc = 'Go to definitions' })

      vim.keymap.set('n', '<leader>a/', function()
        require('fzf-lua').lgrep_curbuf()
      end, { desc = 'Find in currently open buffer' })

      vim.keymap.set('n', '<leader>aa', function()
        require('fzf-lua').buffers()
      end, { desc = 'Find open buffer' })

      vim.keymap.set('n', '<leader>asg', function()
        require('fzf-lua').live_grep()
      end, { desc = 'Search grep' })

      vim.keymap.set('n', '<leader>asn', function()
        require('fzf-lua').files { cwd = vim.fn.stdpath 'config' }
      end, { desc = 'Search in nvim config files' })

      vim.keymap.set('n', '<leader>agn', function()
        require('fzf-lua').live_grep { cwd = vim.fn.stdpath 'config' }
      end, { desc = 'Grep in nvim config files' })
    end,
  },
  {
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
