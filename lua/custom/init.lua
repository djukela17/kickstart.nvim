print '[custom/init.lua]'

require 'custom.keymaps'

-- require 'custom.keymaps'

-- vim.api.nvim_create_user_command('InsertDoneDate', function()
--   local cursor = vim.api.nvim_win_get_cursor(0)
--
--   local row = cursor[1] - 1
--   local col = cursor[2]
--
--   local d = os.date '%Y-%m-%d'
--   vim.api.nvim_buf_set_text(0, row, col, row, col, { ' -- (done ' .. d .. ')' })
-- end, {
--   force = false,
-- })
--
-- vim.keymap.set('n', '<leader>md', vim.cmd.InsertDoneDate, { desc = 'Enter the current time in RFC format' })
--
-- vim.keymap.set('n', '<leader>md', function()
--   local cursor = vim.api.nvim_win_get_cursor(0)
--
--   local row = cursor[1] - 1
--   local col = cursor[2]
--
--   local d = os.date '%Y-%m-%d'
--   vim.api.nvim_buf_set_text(0, row, col, row, col, { ' -- (done ' .. d .. ')' })
-- end, { desc = 'insert done @now' })
--
return {}
