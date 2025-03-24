return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            flavour = "frappe", -- Set the Catppuccin flavor
        },
        config = function(_, opts)
            require("catppuccin").setup(opts) -- Apply the options
            vim.cmd.colorscheme("catppuccin") -- Set the colorscheme
        end,
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<Space>f", builtin.find_files, {})
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require'lspconfig'.pyright.setup{}
        end,
    },
    {
        "williamboman/mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "pyright", "lua_ls" }
            })
        end,
    },
    {
        "hrsh7th/nvim-cmp",  -- Autocomplete plugin
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",  -- LSP completion
            "hrsh7th/cmp-buffer",    -- Buffer completion
            "hrsh7th/cmp-path",      -- Path completion
            "L3MON4D3/LuaSnip",      -- Snippet engine
            "saadparwaiz1/cmp_luasnip" -- Snippet completions
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(), -- Tab to navigate
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enter to confirm
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "path" },
                }),
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true  -- Auto-configures itself
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional, for icons
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true
    },
    {
        "xiyaowong/transparent.nvim"
    },
    {
        "github/copilot.vim"
	},
     
     {
  "S1M0N38/love2d.nvim",
  cmd = "LoveRun",
  opts = { path_to_love_bin = "~/appimage/love2d.appimage" },
  keys = {
    { "<leader>v", ft = "lua", desc = "LÖVE" },
    { "<leader>vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
    { "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
  },
},
	{
		"NMAC427/guess-indent.nvim", config = function()
			require("guess-indent").setup {} end,
	},

    {
        "tpope/vim-fugitive",
    },

}
