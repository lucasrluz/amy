local config = require("amy.config")

local p = require("amy.palette").dark

local bg_base = p.base
	    --background = "#faf4ed",
		--text = "#575279",
		--color0 = "#d7827e", -- rose
		--color1 = "#ea9d34", -- yellow 
		--color2 = "#286983", -- green
		--color3 = "#9893a5", -- white gray
		--color4 = "#907aa9", -- purple
		--color5 = "#dfdad9", -- white white gray
return {
	normal = {
		a = { bg = p.color0, fg = p.background, gui = "bold" },
		b = { bg = p.color6, fg = p.color0 },
		c = { bg = p.color5, fg = p.text },
	},
	insert = {
		a = { bg = p.color2, fg = p.background, gui = "bold" },
		b = { bg = p.color6, fg = p.color2 },
		c = { bg = p.color5, fg = p.text },
	},
	visual = {
		a = { bg = p.color4, fg = p.background, gui = "bold" },
		b = { bg = p.color6, fg = p.color4 },
		c = { bg = p.color5, fg = p.text },
	},
	replace = {
		a = { bg = "#ff0000", fg = p.background, gui = "bold" },
		b = { bg = p.color6, fg = "#ff0000" },
		c = { bg = p.color5, fg = p.text },
	},
	command = {
		a = { bg = p.color0, fg = p.background, gui = "bold" },
		b = { bg = p.color6, fg = p.color0 },
		c = { bg = p.color5, fg = p.text },
	},
	inactive = {
		a = { bg = p.color5, fg = p.text, gui = "bold" },
		b = { bg = p.color5, fg = p.text },
		c = { bg = p.color5, fg = p.text },
	},
}
