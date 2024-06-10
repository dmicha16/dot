require("neo-tree").setup({
	filesystem = {
		filtered_items = {
			hide_dotfiles = false
		},
		follow_current_file = {
			enabled = true
		},
	},
	event_handlers = { 
        { 
             event = "vim_buffer_enter", 
             handler = function() 
                 if vim.bo.filetype == "neo-tree" then 
                     vim.cmd("setlocal relativenumber")
                     vim.cmd("setlocal number") 
                 end 
             end, 
         }
	}})
