local M = {
	type = 'server',
	port = '${port}',
	executable = {
		command = vim.fn.exepath('puppet-debugserver'),
		args = { '--port', '${port}' },
	},
}

if vim.fn.has('win32') == 1 then
	M.executable.detached = false
end

return M
