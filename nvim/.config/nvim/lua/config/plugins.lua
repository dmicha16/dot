return {
{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	    {"nvim-lua/plenary.nvim"},
	    {"MunifTanjim/nui.nvim"},
	    {"nvim-tree/nvim-web-devicons"}
	-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
},
},
{
	"rebelot/kanagawa.nvim"
},
{
    "catppuccin/nvim"
},
{
	"folke/persistence.nvim"
},
{
	"ibhagwan/fzf-lua"
},
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
},
{
    "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}
},
{
    "nvim-treesitter/nvim-treesitter"
},
{
    "nvim-treesitter/nvim-treesitter-context"
},
{
    "numToStr/Comment.nvim"
},
{
    "danymat/neogen"
},
{
    "neovim/nvim-lspconfig"
},
{
    "mfussenegger/nvim-lint"
},
{
  "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
  lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
  dependencies = {
    -- main one
    { "ms-jpq/coq_nvim", branch = "coq" },

    -- 9000+ Snippets
    { "ms-jpq/coq.artifacts", branch = "artifacts" },

    -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
    -- Need to **configure separately**
    { 'ms-jpq/coq.thirdparty', branch = "3p" }
    -- - shell repl
    -- - nvim lua api
    -- - scientific calculator
    -- - comment banner
    -- - etc
  },
  init = function()
    vim.g.coq_settings = {
        auto_start = true, -- if you want to start COQ at startup
        -- Your COQ settings here
    }
  end,
  config = function()
    -- Your LSP settings here
  end,
},
{
    "lepture/vim-jinja"
},
{
    "smoka7/hop.nvim",
    version = "*",
    opts = {
        keys = 'etovxqpdygfblzhckisuran'
    }
},
{
    "gbprod/yanky.nvim"
},
{
    "lewis6991/gitsigns.nvim"
},
{
    'fei6409/log-highlight.nvim',
},
{
    'goolord/alpha-nvim',
    dependencies = { 'echasnovski/mini.icons' },
},
{
    'HiPhish/rainbow-delimiters.nvim',
},

{
  "nyoom-engineering/oxocarbon.nvim"
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
}
}
