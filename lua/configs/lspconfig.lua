-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "cmake" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  focusable = false,
  cmd = {
    "clangd",
    "--function-arg-placeholders=false",
    "--completion-style=bundled",
    "--pch-storage=memory",
    "--background-index",
    "--background-index-priority=normal",
  },
}

local util = vim.lsp.util
local _open_floating_preview = util.open_floating_preview
util.open_floating_preview = function(contents, syntax, opts, ...)
  opts = opts or {}
  opts.focusable = false
  opts.border = "single"
  return _open_floating_preview(contents, syntax, opts, ...)
end

require("lspconfig").glsl_analyzer.setup {
  cmd = { "glsl_analyzer" },
  filetypes = { "glsl", "vert", "frag", "geom", "comp" },
  root_dir = function()
    return vim.loop.cwd()
  end,
}
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
