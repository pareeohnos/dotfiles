-- I've disabled the vim-sleuth plugin in the base configuration file.
-- Make sure this is disabled first, as the plugin below will do the work
-- instead

return {
	"nmac427/guess-indent.nvim",
	lazy = false,
	config = function()
		require("guess-indent").setup({})
	end,
}
