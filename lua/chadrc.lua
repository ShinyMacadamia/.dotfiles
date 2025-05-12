local M = {}

M.base46 = {
  theme = "monekai",

  -- hl_override = {
  --   Comment = { italic = true },
  --   ["@comment"] = { italic = true },
  --   BufferLineBufferSelected = { fg = "#F92672", bold = true }, -- Active buffer (white & bold)
  --   BufferLineBackground = { fg = "#ffffff" }, -- Inactive buffers (gray)
  --   BufferLineFill = { bg = "#ffffff" }, -- Background of tabline
  --   BufferLineSeparator = { fg = "#ffffff" },
  -- },
  changed_themes = {
    monekai = {
      polish_hl = {
        treesitter = {
          ["@punctuation.delimiter"] = { fg = "#FFCC66" },
          ["@keyword.cpp"] = { fg = "#F92672" },
          ["@keyword.conditional"] = { fg = "#F92672" },
          ["@keyword.return"] = { fg = "#F92672" },
          ["@keyword.type.cpp"] = { fg = "#F92672" },
          ["@keyword.modifier.cpp"] = { fg = "#F92672" },
          ["@type.definition.cpp"] = { fg = "#F180FF" },
          ["@keyword.repeat.cpp"] = { fg = "#F92672" },
          ["@keyword.exception.cpp"] = { fg = "#F92672" },

          ["@function.call"] = { fg = "#8BC34A" },
          ["@constructor.cpp"] = { fg = "#8BC34A" },
          ["@method"] = { fg = "#8BC34A" },
          ["@function.method.cpp"] = { fg = "#8BC34A" },
          ["@function.method.call.cpp"] = { fg = "#8BC34A" },
          ["@function"] = { fg = "#8BC34A" },

          ["@return_statement"] = { fg = "#ff7373" },
          ["@type.cpp"] = { fg = "#ffa500" },
          ["@module.cpp"] = { fg = "#FF7EAC" },
          ["@property.cpp"] = { fg = "#6DE2EF" },
          ["@variable.member.cpp"] = { fg = "#6DE2EF" },
          ["@variable.cpp"] = { fg = "#DADADA" },
          ["@variable.parameter.cpp"] = { fg = "#DADADA" },
          ["@constant.cpp"] = { fg = "#61A0FF" },
          ["@constant.builtin.cpp"] = { fg = "#F92672" },

          ["@type.builtin.cpp"] = { fg = "#F92672" },
          ["@keyword.import.cpp"] = { fg = "#F92672" },

          ["@string.cpp"] = { fg = "#E6DB74" },
        },
      },
    },
  },
}

return M
