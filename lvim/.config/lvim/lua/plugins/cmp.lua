lvim.builtin.cmp.completion.completeopt = "menu,menuone,noinsert"

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require "cmp"
local luasnip = require "luasnip"

local cmp_mapping_tab = function(fallback)
  if cmp.visible() then
    cmp.confirm({ select = true })
  elseif luasnip.expand_or_locally_jumpable() then
    luasnip.expand_or_jump()
  elseif has_words_before() then
    cmp.complete()
  else
    fallback()
  end
end

local cmp_mapping_stab = function(fallback)
  if cmp.visible() then
    cmp.confirm({ select = true })
  elseif luasnip.jumpable(-1) then
    luasnip.jump(-1)
  else
    fallback()
  end
end

lvim.builtin.cmp.mapping["<Tab>"].i = cmp_mapping_tab
lvim.builtin.cmp.mapping["<Tab>"].s = cmp_mapping_tab
lvim.builtin.cmp.mapping["<S-Tab>"].i = cmp_mapping_stab
lvim.builtin.cmp.mapping["<S-Tab>"].s = cmp_mapping_stab
