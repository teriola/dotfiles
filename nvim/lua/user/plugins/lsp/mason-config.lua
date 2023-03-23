local _mason, mason = pcall(require, "mason")
if not _mason then 
  return
end

local _lspconfig, lspconfig = pcall(require, "mason-lspconfig")
if not _lspconfig then
  return
end

mason.setup()
lspconfig.setup({
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "emmet_ls",
    "lua_ls",
    "eslint",
  },
  automatic_installation = true,
})
