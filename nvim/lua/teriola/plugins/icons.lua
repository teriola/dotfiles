-- Enable icon support in Nvim tree
local status, icons = pcall(require, "nvim-web-devicons")
if not status then
  return
end

icons.setup()

-- Set the default icon theme (optional)
icons.set_icon_theme('material')

