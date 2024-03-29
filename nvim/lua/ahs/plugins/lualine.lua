-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = "tokyonight",
    component_separators = { left = "", right = "" },
    section_separators = { left = " ", right = " " },
    symbols = {
      unix = "",
    },
  },
})
