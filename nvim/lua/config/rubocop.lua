-- The rubocop version that comes with Mason doesn't always match the bundled
-- version and causes issues. Always execute it with `bundle exec`
vim.lsp.config("rubocop", {
	cmd = { "bundle", "exec", "rubocop", "--lsp" },
})
