local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
    ["<A-k>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<A-j>"] = cmp.mapping.select_next_item(cmp_select),
    ["<A-Tab>"] = cmp.mapping.confirm({ select = true }),
    ["<A-Space>"] = cmp.mapping.complete(),
})

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp_mappings,
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    }
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = {
      severity_limit = "Error",
    },
    virtual_text = {
      severity_limit = "Error",
    },
    underline = {
        severity_limit = "Error",
    },
  }
)

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })

    vim.keymap.set("n", "<leader>gd", require("telescope.builtin").lsp_definitions, {buffer = bufnr})
    vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, {buffer = bufnr})
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,

    --- replace `example_server` with the name of a language server
    -- example_server = function()
      --- in this function you can setup
      --- the language server however you want. 
      --- in this example we just use lspconfig

      -- require('lspconfig').example_server.setup({
        ---
        -- in here you can add your own
        -- custom configuration
        ---
      -- })
    -- end,
  },
})

lsp_zero.setup()
