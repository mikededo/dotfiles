local highlights = {
  Normal = { fg = '#ABB2BF', bg = 'black' },
  StatusLineNC = { fg = '#ABB2BF' },
  DashboardCenter = { fg = '#ABB2BF' },
  DashboardFooter = { fg = '#ABB2BF' },
  DashboardHeader = { fg = '#ABB2BF' },
  DashboardShortcut = { fg = '#ABB2BF' },
  IndentBlanklineChar = { fg = '#3F4854' },
  Delimiter = { fg = '#ABB2BF' },
  ['@punctuation.delimiter'] = { fg = '#ABB2BF' },
  ['@punctuation.bracket'] = { fg = '#ABB2BF' },
  ['@punctuation.special'] = { fg = '#ABB2BF' },
  ['@attribute'] = { fg = '#E06C75' },
  ['@field'] = { fg = '#E06C75' },
  ['@symbol'] = { fg = '#E5C07B' },
  ['@namespaces'] = { fg = '#E5C07B' },
  ['@property'] = { fg = '#E06C75' },
  ['@constant'] = { fg = '#D19A66' },
  ['@tag.attribute'] = { fg = '#E5C07B' },
}

for _, highlight in pairs(highlights) do
  highlight.link = ''
end

return highlights
