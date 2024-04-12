local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end


local keymap = vim.keymap
local on_attach = function(client, buffnr)
local opts = { noremap = true, silent = true, buffer = bufnr }

keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap.set("n", "K", "<leader>LSoutlineToggle<CR>", opts)

if client.name == "tsserver" then
    keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>")
end

end

local capabilities = require("cmp_nvim_lsp").default_capabilities()


lspconfig.bashls.setup({
  on_attach = function(client, bufnr)
    print("Bash LSP has started good!")
    lspconfig.util.default_config.on_attach(client, bufnr)
    capabilities = capabilities
  end

})

lspconfig.cssls.setup({
  on_attach = function(client, bufnr)
    print('CSS LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end,
})

lspconfig.html.setup({
  on_attach = function(client, bufnr)
    print("HTML LSP has started good!")
    lspconfig.util.default_config.on_attach(client, bufnr)
    capabilities = capabilities
  end
})

lspconfig.jsonls.setup({
  on_attach = function(client, bufnr)
    print('Json LSP has started good!')
    lspconfig.util.default_config.on_attach(client, bufnr)
  end,
})


lspconfig.lua_ls.setup({
  on_attach = function(client, bufnr)
    print("Lua LSP has started good!")
    lspconfig.util.default_config.on_attach(client, bufnr)
    capabilities = capabilities
  end
})

lspconfig.marksman.setup({
  on_attach = function(client, bufnr)
    print("Marksman LSP has started good!")
    lspconfig.util.default_config.on_attach(client, bufnr)
    capabilities = capabilities
  end
})

lspconfig.pyright.setup({
  on_attach = function(client, bufnr)
    print("Python LSP has started good!")
    lspconfig.util.default_config.on_attach(client, bufnr)
    capabilities = capabilities
  end
})

lspconfig.sqlls.setup({
  on_attach = function(client, bufnr)
    print("SQL LSP has started good!")
    lspconfig.util.default_config.on_attach(client, bufnr)
    capabilities = capabilities
  end
})


lspconfig.tailwindcss.setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig.yamlls.setup({
  on_attach = function(client, bufnr)
    print("Yaml LSP has started good!")
    lspconfig.util.default_config.on_attach(client, bufnr)
    capabilities = capabilities
  end
})
