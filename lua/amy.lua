local M = {}

local config = require("amy.config")

local function set_highlights()
	local variant = config.variant

	local palette

	if variant == "dark" then 
		palette = require("amy.palette").dark
	else
		palette = require("amy.palette").light
	end

	local groups = {}
	local highlights = {}

	local default_highlights = {
		-- EDITOR
		Normal = { fg = palette.text, bg = palette.background },
		LineNr = { fg = palette.color3 },
		Directory = { fg = palette.text },
		Title = { fg = palette.text },
		Visual = { bg = palette.color5 },
		CursorLine = { bg = palette.color5 },
		VertSplit = { fg = palette.color3 },
		EndOfBuffer = { fg = palette.text },

		-- FUNCTION, CLASS
		-- KEYWORD
		["@keyword.import"] = { fg = palette.color2 },
		Function = { fg = palette.color0 },
		Keyword = { fg = palette.color2 },
		Identifier = { fg = palette.text },
		Special = { fg = palette.text },
		Type = { fg = palette.color2 },
		Constant = { fg = palette.color4 },
		String = { fg = palette.color1 },
		Statement = { fg = palette.color2 },
		PreProc = { fg = palette.color2 },
		["@lsp.type.unresolvedReference.rust"] = { fg = palette.color0 },
		["@lsp.typemod.class.declaration.java"] = { fg = palette.color0 },
		["@lsp.mod.public.java"] = { fg = palette.color0 },
	}

	for group, highlight in pairs(default_highlights) do
		highlights[group] = highlight
	end

	for group, highlight in pairs(highlights) do
		if highlight.blend ~= nil and (highlight.blend >= 0 and highlight.blend <= 100) and highlight.bg ~= nil then
			highlight.bg = utilities.blend(highlight.bg, highlight.blend_on or palette.base, highlight.blend / 100)
		end
		vim.api.nvim_set_hl(0, group, highlight)
	end

end

function M.colorscheme()
	vim.opt.termguicolors = true
	if vim.g.colors_name then
		vim.cmd("hi clear")
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "amy"

	set_highlights()
end

function M.setup(options)
	config = options
end

return M
