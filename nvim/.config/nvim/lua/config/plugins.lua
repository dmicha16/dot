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
}

}
