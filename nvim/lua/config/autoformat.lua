-- Ensure that the LSP auto-formats the file on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.rb",
	callback = function()
		vim.lsp.buf.format()
	end,
})
