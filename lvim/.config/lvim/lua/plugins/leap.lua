return {
  "ggandor/leap.nvim",
  lazy = true,
  event = "User FileOpened",
  config = function()
    require('leap').add_default_mappings()
  end,
}
