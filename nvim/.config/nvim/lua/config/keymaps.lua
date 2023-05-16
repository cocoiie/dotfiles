local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({
    lhs,
    mode = mode,
  }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Cursor movement
map({"n", "v", "o"}, "H", "^", {
  desc = "Use 'H' as '^'",
})
map({"n", "v", "o"}, "L", "$", {
  desc = "Use 'L' as '$'",
})

-- Save
map({"i", "v", "n", "s"}, "<C-s>", "<cmd>w<cr><esc>", {
  desc = "Save current file",
})
map({"n"}, "<leader>w", "<cmd>w<cr><esc>", {
  desc = "Save current file",
})

