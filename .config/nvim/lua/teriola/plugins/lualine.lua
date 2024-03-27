local status, lualine = pcall(require, "lualine")
if not status then
  return
end

--local lualine_nightfly = require("lualine.themes.nightfly")
lualine.setup({
  options = {
    theme = "palenight",
    icons_enabled = true
  },
  sections = {
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
  },
});
