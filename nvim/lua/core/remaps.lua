function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function noremap(shortcut, command)
	vim.keymap.set('n', shortcut, command)
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

vim.cmd('command! Q q')
vim.cmd('command! Qa qa')
nmap('<c-s>', ':w<CR>')
nmap('<c-o>', ':e C:\\Users\\91863\\AppData\\Local\\nvim<CR>')

-- Buffer Remaps
nmap('<c-k>', ':wincmd k<CR>')
nmap('<c-j>', ':wincmd j<CR>')
nmap('<c-h>', ':wincmd h<CR>')
nmap('<c-l>', ':wincmd l<CR>')
----

-- Nvim Tree
nmap('<c-t>', ':NvimTreeToggle<CR>')
--

nmap('<c-h>', ':noh<CR>')
noremap('<C-Left>', ':tabprevious<CR>')
noremap('<C-Right>', ':tabnext<CR>')
