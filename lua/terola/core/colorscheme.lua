vim.cmd("colorscheme onedark")

local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
  print("Colorshceme not found!")
  return
end
