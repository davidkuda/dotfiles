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
				left_pad = 0,
				right_pad = 2,
			},
			code = {
				style = "full",
				width = "block",
				left_margin = 0,
				left_pad = 0,
				right_pad = 2,
				min_width = 60,
				conceal_delimiters = false,
				border = 'thin',

			},
			sign = {
				enabled = false,
			},
		},
	},
}
