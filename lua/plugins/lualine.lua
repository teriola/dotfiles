local status, lualine = pcall(require, "lualine")
if not status then 
  return
end

local lualine_onedark = require("lualine.themes.onedark")

lualine_onedark.command = {
  a = {
    gui = "bold",
    -- colors
  }
}
lualine.setup({
  options = {
    theme = lualine_onedark
  }
})
