-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("customs.discipline")
discipline.cowboy()
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "<M-v>", ":vsplit<cr>", opts)
keymap.set("n", "<M-h>", ":split<cr>", opts)

-- Diagnostic
keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
keymap.set("n", "<C-d>", vim.diagnostic.open_float, opts)

-- Single line movement for wrapped line
keymap.set("n", "j", "gj", opts)
keymap.set("n", "k", "gk", opts)

-- Esc+k, Esc+j, line move deletion (remains on Alt+j, Alt+k in normal mode)
vim.api.nvim_del_keymap("i", "<M-k>")
vim.api.nvim_del_keymap("i", "<M-j>")

-- Disabling tab shuffle on Shift+h and shift+L
vim.api.nvim_del_keymap("n", "L")
vim.api.nvim_del_keymap("n", "H")
