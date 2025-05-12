vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

local cmp = require "cmp"

cmp.setup {
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- LSP completions first
  }, {
    { name = "buffer" },
    { name = "path" },
    -- add other sources if needed
  }),
  -- ... other config options ...
}

local dap = require "dap"
dap.adapters.codelldb = {
  type = "executable",
  command = ".local/share/nvim/mason/bin/codelldb",
  name = "codelldb",
}
dap.configurations.cpp = { -- Use "cpp" or "c" or "rust" as appropriate.
  {
    name = "Launch file",
    type = "codelldb", -- This should match the adapter name above.
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}/build",
    args = function()
      local argument_string = vim.fn.input "Program arguments: "
      return vim.fn.split(argument_string, " ", true)
    end,
  },
}

vim.filetype.add {
  extension = {
    ["vert"] = "glsl",
    ["tesc"] = "glsl",
    ["tese"] = "glsl",
    ["frag"] = "glsl",
    ["geom"] = "glsl",
    ["comp"] = "glsl",
    ["vs"] = "glsl",
    ["fs"] = "glsl",
  },
}

require("aerial").setup {
  layout = {
    width = 30,
  },
}
