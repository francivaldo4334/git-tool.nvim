local M = {}
local git_commit_tool = require("git-commit-tool.lua.git-commit-tool")
local git_merge_tool = require("git-merge-tool.lua.git-merge-tool")
local git_merge_tool_opts = {
	keymaps = {
		to_next_conflict = "<F8>",
		to_prev_conflict = "<S-F8>",
		accept_local_changes = "<leader>gml",
		accept_remote_changes = "<Leader>gmr",
		accept_all_changes = "<Leader>gma",
		confirm_merge = "<C-S-g>",
	},
}
local git_commit_tool_opts = {

	templates = {
		":sparkles: feat: {{COMMIT}}",
		":bug: fix: {{COMMIT}}",
		":construction: {{COMMIT}}",
		":recycle: refactor: {{COMMIT}}",
	},
	usekeymaps = true,
}
function M.setup(opts)
	git_commit_tool.setup(opts.git_commit_tool or git_commit_tool_opts)
	git_merge_tool.setup(opts.git_merge_tool or git_merge_tool_opts)
end

return M
