return {
	"mistweaverco/kulala.nvim",
	event = "VeryLazy",
	config = function()
		require("kulala").setup({
                      default_view = "headers_body",
                })

		vim.api.nvim_set_keymap("n", "<C-\\>", ":lua require('kulala').run()<CR>", { noremap = true, silent = true })
	end,
}
