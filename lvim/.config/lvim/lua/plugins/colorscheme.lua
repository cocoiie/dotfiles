return {
  {
    "sainnhe/gruvbox-material",
    lazy = lvim.colorscheme ~= "gruvbox-material",
    init = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_forground = "original"
      vim.g.gruvbox_material_disable_italic_comment = 0
      vim.g.gruvbox_material_enable_bold = 1
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = not vim.startswith(lvim.colorscheme, "catppuccin"),
    -- lazy = true,
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
}
