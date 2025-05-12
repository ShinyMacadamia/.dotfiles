require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<A-k>", "<C-i>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", "<C-o>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add breakpoint at line" })
vim.keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or continue the debugger" })
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

vim.keymap.set("n", "<F5>", function()
  require("dap").continue()
end)
vim.keymap.set("n", "<F8>", function()
  require("dap").step_over()
end)
vim.keymap.set("n", "<F7>", function()
  require("dap").step_into()
end)
vim.keymap.set("n", "<F9>", function()
  require("dap").step_out()
end)
vim.keymap.set("n", "<F12>", function()
  require("dap").terminate()
end)
-- vim.keymap.set("n", "<C-S-]>", function()
--   require("nvchad.tabufline").next()
-- end)
--
-- vim.keymap.set("n", "<C-S-[>", function()
--   require("nvchad.tabufline").prev()
-- end)

--
-- -- Next tab
-- vim.keymap.set("n", "<A-S-]>", ":bnext<CR>", opts)
--
-- -- Previous tab
-- vim.keymap.set("n", "<A-S-[>", ":bprevious<CR>",opts)

-- Jump forward (like <C-i>) with Alt+Shift+Right
-- vim.api.nvim_set_keymap('n', '<A-k>', '<C-i>', opts)

-- Jump backward (like <C-o>) with Alt+Shift+Left
-- vim.api.nvim_set_keymap('n', '<A-j>', '<C-o>', opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
