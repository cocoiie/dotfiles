return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = not vim.startswith(lvim.colorscheme, "catppuccin"),
  opts = {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {
      -- :h background
      light = "latte",
      dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false,   -- Force no bold
    styles = {
      comments = { "italic" },
      conditionals = { "bold" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
      cmp = true,
      gitsigns = true,
      leap = true,
      bufferline = true,
      mason = true,
      nvimtree = true,
      treesitter = true,
      telescope = true,
      which_key = true,
      dap = {
        enabled = true,
        enable_ui = true,
      },
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
        },
      -- lueline = true,
      },
      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  },
}
