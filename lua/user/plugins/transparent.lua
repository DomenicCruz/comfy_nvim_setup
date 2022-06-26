local transparent_status_ok, transparent = pcall(require, "transparent")
if not transparent_status_ok then
  return
end

transparent.setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",

    -- nvim tree
    "NvimTreeNormal",
  },
  exclude = {}, -- table: groups you don't want to clear
-- You can also set the groups option to override the default groups.
--The default groups: Normal NormalNC Comment Constant Special Identifier Statement PreProc Type Underlined Todo String Function Conditional Repeat Operator Structure LineNr NonText SignColumn CursorLineNr.
})
