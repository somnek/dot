-- presets: minimal, miami-nights, kiwi, slate, crt-green, crt-amber
require("noirbuddy").setup {
    preset = 'slate',
    colors = {
      primary = '#6EE2FF',
      secondary = '#267FB5',
      background = '#18181A',
      diagnostic_error = '#EC0034',
      diagnostic_warning = '#ff7700',
      diagnostic_info = '#d5d5d5',
      diagnostic_hint = '#f5f5f5',
      diff_add = '#f5f5f5',
      diff_change = '#737373',
      diff_delete = '#EC0034',
    },
  }


-- you can even customize telescope etc, tho the preset also does this

-- Require colorbuddy...
local Color, colors, Group, groups, styles = require('colorbuddy').setup {}

-- Override specific highlight groups...
Group.new('TelescopeTitle', colors.primary)
Group.new('TelescopeBorder', colors.secondary)
Group.new('CursorLineNr', colors.primary, colors.noir_9)
Group.new('Searchlight', nil, colors.secondary)
Group.new('@comment', colors.noir_7)
Group.new('@punctuation', colors.noir_2)

-- Add font styles to highlight groups...
Group.new('@constant', colors.noir_2, nil, styles.bold)
Group.new('@method', colors.noir_0, nil, styles.bold + styles.italic)

-- Link highlight groups...
Group.link('SignifySignAdd', groups.DiffAdd)
Group.link('SignifySignChange', groups.DiffChange)
Group.link('SignifySignDelete', groups.DiffDelete)

-- etc.
