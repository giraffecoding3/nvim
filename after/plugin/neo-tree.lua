-- Plugin laden
require("neo-tree").setup({
	close_if_last_window = false,
	enable_git_status = false,
	enable_diagnostics = false,
	default_component_configs = {
		icon = {
			folder_closed = " ",
			folder_open = " ",
			folder_empty = " ",
			folder_empty_open = " ",
			default = "",
		},
	},
	filesystem = {
		filtered_items = {
			visible = true, -- Versteckte Dateien zeigen
		},
		follow_current_file = {
			enabled = true, -- Datei im Tree folgen
		},
		hijack_netrw_behavior = "open_current",
		use_libuv_file_watcher = true,
		bind_to_cwd = false,
		cwd_target = {
			sidebar = "tab",
			current = "window",
		},
		-- Startverzeichnisse, Neo-tree hat kein direktes `root_dirs`, aber du kannst so starten:
		window = {
			mappings = {
				["h"] = "navigate_up",
				["l"] = "set_root",
			},
		},
	},
	window = {
		position = "left",
		width = 30,
		mappings = {
			["<space>"] = "toggle_node",
		},
	},
})

-- Keymap wie vorher
vim.keymap.set("n", "<leader>pv", "<Cmd>Neotree toggle<CR>")

-- Tree beim Start automatisch öffnen
vim.cmd([[autocmd VimEnter * Neotree show]])
