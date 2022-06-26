local colorscheme = "darkplus"

-- Try to set up colorscheme for nvim
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

-- Some nvim settings used to override colorscheme defaults (ex: comments hightlight, to make them green colour )
