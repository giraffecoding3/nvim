vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })
	use("m4xshen/autoclose.nvim")
	use("folke/tokyonight.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	})
	use({
		"vlime/vlime",
		rtp = "vim/", -- Das Verzeichnis, das vim-spezifische Dateien enthält
	})
	use({
		"barrett-ruth/live-server.nvim",
		build = "pnpm add -g live-server",
		cmd = { "LiveServerStart", "LiveServerStop" },
		config = function()
			require("live-server").setup()
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		--or
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("Tsuzat/NeoSolarized.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use("craftzdog/solarized-osaka.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("numToStr/Comment.nvim")
	use("folke/which-key.nvim")
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	})
	use("tpope/vim-fugitive")
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	})

	use({
		"nvimdev/dashboard-nvim",
		cmd = "Dashboard", -- Verwende `cmd` statt `event`, um das Plugin explizit mit einem Befehl zu laden
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("dashboard").setup({
				theme = "hyper",
				config = {
					shortcut = {
						{
							desc = "Explorer",
							group = "@property",
							key = "v",
							action = "Neotree show",
						},
						{
							desc = " Find File",
							group = "@property",
							key = "f",
							action = "Telescope find_files",
						},
						{
							desc = " Recents",
							group = "@property",
							key = "r",
							action = "Telescope oldfiles",
						},
						{
							desc = " New File",
							group = "@property",
							key = "n",
							action = "enew",
						},
						{
							desc = " Find Word",
							group = "Label",
							key = "w",
							action = "Telescope live_grep",
						},
					},
					packages = { enable = true },
					project = {
						enable = true,
						limit = 8,
						icon = "",
						label = "Projects",
						action = "Telescope find_files cwd=",
					},
					mru = {
						enable = true,
						limit = 10,
						icon = "",
						label = "Recent Files",
						cwd_only = false,
					},
				},
			})
		end,
	})
end)
