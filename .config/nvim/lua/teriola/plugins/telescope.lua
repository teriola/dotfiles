-- Import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- Import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- Import telescope builtin
local builtin_setup, builtin = pcall(require, "telescope.builtin")
if not builtin_setup then
  return
end

-- Telescope Keymaps
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fc', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- Configure telescope
telescope.setup({
  -- Configure custom mappings
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
      },
    },
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({})
    }
  }
})
telescope.load_extension("ui-select")
