return {
	vim.diagnostic.config({
		signs = {
			-- text = {
			-- 	[vim.diagnostic.severity.ERROR] = "",
			-- 	[vim.diagnostic.severity.WARN] = "",
			-- },
			-- linehl = {
			-- 	[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			-- },
			numhl = {
				[vim.diagnostic.severity.WARN] = "WarningMsg",
				[vim.diagnostic.severity.ERROR] = "ErrorMsg",
				[vim.diagnostic.severity.INFO] = "DiagnosticInfo",
				[vim.diagnostic.severity.HINT] = "DiagnosticHint",
			},
		},
	}),
}
