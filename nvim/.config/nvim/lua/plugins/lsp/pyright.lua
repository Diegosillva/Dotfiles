return function(lspconfig, capabilities)
	lspconfig.pyright.setup({
		capabilities = capabilities,
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "basic",
					autoSearchPaths = true,
					useLibraryCodeForTypes = true,
					diagnosticMode = "workspace",
				},
			},
		},
	})
end
