-- Change this variable to to the name of the 
-- colorcheme you installed to enable it
local colorscheme = "rose-pine"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
  print("Colorshceme " .. colorscheme .. " not found!")
  return
end
