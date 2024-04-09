local options = {
	backup 		      = false,
	clipboard 	    = "unnamedplus",
	cmdheight	      = 1,
	conceallevel	  = 0,
	fileencoding	  = "utf-8",
	hlsearch	      = true,
	ignorecase	    = true,
	mouse 		      = "a",
	pumheight	      = 10,
	showmode	      = false,
	showtabline	    = 2,
	smartcase	      = true,
	smartindent	    = true,
	splitbelow	    = true,
	splitright	    = true,
	swapfile	      = false,
	termguicolors	  = true,
	undofile	      = true,
	writebackup	    = false,
	expandtab	      = true,
	shiftwidth	    = 2,
	tabstop		      = 2,
	cursorline	    = true,
	number		      = true,
	relativenumber	= true,
	numberwidth	    = 4,
	signcolumn    	= "yes",
	wrap		        = false,
	scrolloff	      = 8,
	hidden		      = true,
	textwidth	      = 80,
	colorcolumn	    = "81",
}

vim.cmd("filetype plugin indent on")
vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end
