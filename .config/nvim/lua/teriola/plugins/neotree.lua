local _, neotree = pcall(require, "neo-tree")
if not _ then
  return
end

neotree.setup({
  close_if_last_window = true,
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      default = "",
    },
    git_status = {
      symbols = {
        -- Change type
        added = "A", 
        modified = "M",
        deleted = "X",
        renamed = "R",

        -- Status type
        --untracked = "",
        --ignored   = "",
        --unstaged  = "󰄱",
        --staged    = "",
        --conflict  = "",
      },
    },
  },
  window = {
    mappings ={
      ["<Tab>"] = "open", -- Toggle directories with tab
    }
  }
})

vim.keymap.set("n", "<leader>p", ":Neotree filesystem reveal right<CR>")
