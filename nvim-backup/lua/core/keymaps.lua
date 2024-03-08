-- jet leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- Trouble
vim.keymap.set("n", "<leader>xx", function()
  require("trouble").toggle()
end, { desc = "Trouble toggle" })

vim.keymap.set("n", "<leader>xw", function()
  require("trouble").toggle("workspace_diagnostics")
end, { desc = "Trouble work_diagnostics" })

vim.keymap.set("n", "<leader>xd", function()
  require("trouble").toggle("document_diagnostics")
end, { desc = "Trouble doc_diagnostics" })

vim.keymap.set("n", "<leader>xq", function()
  require("trouble").toggle("quickfix")
end, { desc = "Quickfix" })

vim.keymap.set("n", "<leader>xl", function()
  require("trouble").toggle("loclist")
end, { desc = "LocalList" })

vim.keymap.set("n", "gR", function()
  require("trouble").toggle("lsp_references")
end, { desc = "Lsp references" })

-- Oil.nvim
keymap.set("n", "-", ":lua MiniFiles.open()<CR>", { desc = "Open parent directory" })

-- Nabla
keymap.set("n", "<leader>pp", require("nabla").popup, { desc = "Math pop-up" })
keymap.set("n", "<leader>pt", require("nabla").toggle_virt, { desc = "Math toggle" })

-- Terminal
keymap.set("n", "<F6>", ":ToggleTerm<CR>", { desc = "Toggle Terminal" })

-- General keymaps
--keymap.set("i", "jk", "<ESC>") -- exit insert mode with jk
--keymap.set("i", "ii", "<ESC>") -- exit insert mode with ii
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit" })       -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Quit without saving" }) -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save" })                 -- save

-- Norg modules
keymap.set("n", "<localleader>x", ":Neorg exec cursor<CR>", { silent = true, desc = {"Exec Cursor"} })       -- just this block or blocks within heading section
keymap.set("n", "<localleader>X", ":Neorg exec current-file<CR>", { silent = true, desc = {"Exec file"} }) -- whole file

-- Zen-mode
keymap.set("n", "<leader>zz", ":ZenMode<CR>", {desc = "Zen-mode"})

-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split vertically"})     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>h", {desc = "Split horizontally"})     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", {desc = "Split in half"})     -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>", {desc = "Close split window"}) -- close split window
keymap.set("n", "<leader>sj", "<C-w>-", {desc = "Split height -"})     -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+", {desc = "Split height +"})     -- make split windows height taller
keymap.set("n", "<leader>sl", "<C-w>>5", {desc = "Split width +"})    -- make split windows width bigger
keymap.set("n", "<leader>sh", "<C-w><5", {desc = "Split width -"})    -- make split windows width smaller

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", {desc = "New tab"})   -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", {desc = "Close tab"}) -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>", {desc = "Next tab"})     -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", {desc = "Previous tab"})     -- previous tab

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>")   -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>") -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>") -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c")             -- next diff hunk
keymap.set("n", "<leader>cp", "[c")             -- previous diff hunk

-- Quickfix keymaps
keymap.set("n", "<leader>qn", ":cnext<CR>", {desc = "Next quickfix item"}) -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>", {desc = "Pre quickfix item"}) -- jump to prev quickfix list item

-- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", {desc = "Maximizer toggle"}) -- toggle maximize tab

-- Telescope
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {desc = "Find files"})
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, {desc = "Live grep"})
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, {desc = "Buffers"})
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, {desc = "Help tags"})
keymap.set("n", "<leader>fs", require("telescope.builtin").current_buffer_fuzzy_find, {desc = "Fzf in buff"})
keymap.set("n", "<leader>fo", require("telescope.builtin").lsp_document_symbols, {desc = "Lsp doc symbols"})
keymap.set("n", "<leader>fi", require("telescope.builtin").lsp_incoming_calls, {desc = "Lso incoming calls"})
keymap.set("n", "<leader>fm", function()
  require("telescope.builtin").treesitter({ default_text = ":method:" })
end, {desc = "treesitter method"})

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>") -- toggle git blame

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
keymap.set("n", "<leader>h1", function()
  require("harpoon.ui").nav_file(1)
end)
keymap.set("n", "<leader>h2", function()
  require("harpoon.ui").nav_file(2)
end)
keymap.set("n", "<leader>h3", function()
  require("harpoon.ui").nav_file(3)
end)
keymap.set("n", "<leader>h4", function()
  require("harpoon.ui").nav_file(4)
end)
keymap.set("n", "<leader>h5", function()
  require("harpoon.ui").nav_file(5)
end)
keymap.set("n", "<leader>h6", function()
  require("harpoon.ui").nav_file(6)
end)
keymap.set("n", "<leader>h7", function()
  require("harpoon.ui").nav_file(7)
end)
keymap.set("n", "<leader>h8", function()
  require("harpoon.ui").nav_file(8)
end)
keymap.set("n", "<leader>h9", function()
  require("harpoon.ui").nav_file(9)
end)

-- LSP
keymap.set("n", "<leader>gg", "<cmd>lua vim.lsp.buf.hover()<CR>", {desc = "Hover"})
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {desc = "Definition"})
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", {desc = "Declaration"})
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {desc = "Implementation"})
keymap.set("n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {desc = "Type definition"})
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", {desc = "References"})
keymap.set("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {desc = "Signature help"})
keymap.set("n", "<leader>rr", "<cmd>lua vim.lsp.buf.rename()<CR>", {desc = "Rename"})
keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", {desc = "Format file"})
keymap.set("v", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", {desc = "Format file"})
keymap.set("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", {desc = "Code action"})
keymap.set("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", {desc = "Open float"})
keymap.set("n", "<leader>gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {desc = "Diagnostic go prev"})
keymap.set("n", "<leader>gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", {desc = "Diagnostic go next"})
keymap.set("n", "<leader>tr", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", {desc = "Document symbol"})
keymap.set("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>", {desc = "Completion"})

-- Nvim-dap
keymap.set("n", "<leader>bb", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>bc", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set("n", "<leader>bl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set("n", "<leader>br", "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set("n", "<leader>ba", "<cmd>Telescope dap list_breakpoints<cr>")
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", "<leader>dd", function()
  require("dap").disconnect()
  require("dapui").close()
end)
keymap.set("n", "<leader>dt", function()
  require("dap").terminate()
  require("dapui").close()
end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
keymap.set("n", "<leader>di", function()
  require("dap.ui.widgets").hover()
end)
keymap.set("n", "<leader>d?", function()
  local widgets = require("dap.ui.widgets")
  widgets.centered_float(widgets.scopes)
end)
keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>")
keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>")
keymap.set("n", "<leader>de", function()
  require("telescope.builtin").diagnostics({ default_text = ":E:" })
end)
