local setup, comment = pcall(require, "Comment")
if not setup then
  return
end

comment.setup({
  toggler = {
    line = "gll", --Line-comment toggle keymap
    block = "gbb", --Block-comment toggle keymap
  },
  ---LHS of operator-pending mappings in NORMAL and VISUAL mode
  opleader = {
    line = "gl", --Line-comment keymap
    block = "gb", --Block-comment keymap
  },
  ---LHS of extra mappings
  extra = {
    above = "glO", --Add comment on the line above,
    below = "glo", --Add comment on the line below
  },
})
