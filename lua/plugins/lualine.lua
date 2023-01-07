local status, lualine = pcall(require, "lualine")
if not status then 
  return
end

local lualine_catppuccin = require("lualine.themes.catppuccin")

lualine_catppuccin.command = {
  a = {
    gui = "bold",
    -- colors
  }
}
lualine.setup({
  options = {
    theme = lualine_catppuccin,
  }
})
