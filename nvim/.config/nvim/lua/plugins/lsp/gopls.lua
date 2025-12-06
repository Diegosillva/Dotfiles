return function(lspconfig, capabilities)
	lspconfig.gopls.setup({
		capabilities = capabilities,
		cmd = { "gopls" },
		filetypes = { "go", "gomod", "gowork", "gotmpl" },
		settings = {
			gopls = {
				completeUnimported = true,
				analyses = {
					unusedparams = true,
				},
			},
		},
	})
end
