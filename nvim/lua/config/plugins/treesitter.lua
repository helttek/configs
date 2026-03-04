return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			require("nvim-treesitter").setup({
				ensure_installed = {
					"lua",
					"c",
					"cpp",
					"java",
					"python"
				},
				auto_install = true,
				highlight = {
					enable = true,
				},
			})
		end,
	}
}
