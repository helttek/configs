return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			vim.lsp.config['lus_ls'] = { capabilities = capabilities }
			vim.lsp.config['pyright'] = { capabilities = capabilities }
			vim.lsp.config['jdtls'] = { capabilities = capabilities }
			vim.lsp.config['ts_ls'] = { capabilities = capabilities }
			vim.lsp.config['clangd'] = { capabilities = capabilities }
			vim.lsp.config['neocmake'] = { capabilities = capabilities }
			vim.lsp.config['gopls'] = { capabilities = capabilities }
			vim.keymap.set("n", "<space>f", function() vim.lsp.buf.format() end)
			vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { desc = 'LSP Rename' })
		end,
		vim.lsp.enable('lua_ls'),
		vim.lsp.enable('pyright'),
		vim.lsp.enable('jdtls'),
		vim.lsp.enable('ts_ls'),
		vim.lsp.enable('neocmake'),
		vim.lsp.enable('clangd'),
		vim.lsp.enable('gopls')
	},
}
