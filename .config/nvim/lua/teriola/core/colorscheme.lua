-- Change this variable to to the name of the 
-- colorcheme you installed to enable it
-- catppuccin
local colorscheme = "catppuccin-mocha"
require("catppuccin").setup({
 transparent_background = true,
})

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
  print("Colorshceme " .. colorscheme .. " not found!")
  return
end

