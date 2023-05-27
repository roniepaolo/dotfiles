local status, hop = pcall(require, "hop")
if (not status) then return end

local directions = require('hop.hint').HintDirection

hop.setup {
  -- Hop configuration goes there
  multi_windows = false
}

vim.keymap.set('', '\\f', function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false})
end, {remap=true})

vim.keymap.set('', '\\F', function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false})
end, {remap=true})
