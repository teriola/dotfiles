local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- Recommended settings from nvim-tree documentation
vim.g.loded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})
