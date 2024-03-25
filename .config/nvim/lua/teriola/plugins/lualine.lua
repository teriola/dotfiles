-- Import lualine plugin safely
local lualine_setup, lualine = pcall(require, "lualine")
if not lualine_setup then
  return
end

lualine.setup({
  options = {
    theme = "dracula",
    --icons_enabled = true,
  }
})
