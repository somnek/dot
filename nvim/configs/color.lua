-- presets: minimal, miami-nights, kiwi, slate, crt-green, crt-amber
require("noirbuddy").setup {
    -- preset = 'minimal',
    colors = {
        primary = '#A9BCD0',
        secondary = '#EF476F',
        background = '#2E3440',
        diagnostic_error = '#B48EAD',
        diagnostic_warning = '#D08770',
        diagnostic_info = '#d5d5d5',
        diagnostic_hint = '#f5f5f5',
        diff_add = '#f5f5f5',
        diff_change = '#737373',
        diff_delete = '#BF616A',

        -- grayscale
        noir_0 = '#ffffff', -- `noir_0` is light for dark themes, and dark for light themes
        noir_1 = '#f5f5f5',
        noir_2 = '#d5d5d5',
        noir_3 = '#b4b4b4',
        noir_4 = '#a7a7a7',
        noir_5 = '#949494',
        noir_6 = '#737373',
        noir_7 = '#4C566A', -- comments (look at section below '@comment')
        noir_8 = '#8F754F', -- highligted background
        noir_9 = '#212121', -- `noir_9` is dark for dark themes, and light for light themes
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
