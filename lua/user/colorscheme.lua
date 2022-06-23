local colorscheme = "darkplus"

-- Try to set up colorscheme for nvim 
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

