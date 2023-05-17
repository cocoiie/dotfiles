return {
  "sainnhe/gruvbox-material",
  lazy = lvim.colorscheme ~= "gruvbox-material",
  init = function()
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_forground = "original"
    vim.g.gruvbox_material_disable_italic_comment = 0
    vim.g.gruvbox_material_enable_bold = 1
  end,
}

