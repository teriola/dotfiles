local mason_setup, mason = pcall(require, "mason")
if not mason_setup then
  return
end

mason.setup({})

local masonlsp_setup, masonlsp = pcall(require, "mason-lspconfig")
if not masonlsp_setup then
  return
end

masonlsp.setup({
  ensure_installed = {
    "lua_ls",
    "bashls",
    "cssls",
    "html",
    "jsonls",
    "tsserver",
  },
})

local lspconfig_setup, lspconfig = pcall(require, "lspconfig")
if not lspconfig_setup then
  return
end

lspconfig.lua_ls.setup({})
lspconfig.bashls.setup({})
lspconfig.cssls.setup({})
lspconfig.html.setup({})
lspconfig.jsonls.setup({})
lspconfig.tsserver.setup({})
