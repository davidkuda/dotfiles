return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			heading = {
				width = "block",
				position = "inline",
				left_pad = 2,
				right_pad = 2,
			},
			code = {
				style = "full",
				position = "right",
				width = "block",
				left_margin = 2,
				left_pad = 2,
				right_pad = 2,
				min_width = 60,
			},
		},
	},
}
