vim.g.mapleader = " "

-- copy to clipboard
vim.keymap.set("v", "<C-A-y>", '"+y')
-- cut
vim.keymap.set("v", "<C-A-d>", '"+d')

-- keep cursor centered while using search and jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- jump to window in nvim
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<C-A-t>", ":ToggleTerm<CR>")

-- dap
vim.keymap.set("n", "<F2>", ":lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<F4>", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<F11>", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require('dap').step_out()<CR>")
