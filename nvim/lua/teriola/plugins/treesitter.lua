-- Import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  ensure_installed = { "lua", "javascript", "html", "css", "json" },
  auto_install = true, -- Auto install above parsers
  highlight = { enable = true }, -- Enable syntax highlighting
  indent = { enable = true}, -- Enable indentation
})
