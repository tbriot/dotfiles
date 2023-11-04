function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    -- For some reason the two following lines mess up the colors of
    -- my beautiful neovim setup on WSL2
    
    --	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	
end

ColorMyPencils()
