return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = not vim.startswith(lvim.colorscheme, "catppuccin"),
  opts = {
    flavour = "mocha",
    -- no_italic = true, -- Force no italic
    -- no_bold = true,   -- Force no bold
  },
  integrations = {
    lualine = true,
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
}
