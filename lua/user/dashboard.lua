local home = os.getenv('HOME')
local db = require('dashboard')

-- linux
db.preview_command = 'ueberzug'
--
db.preview_file_path = home .. '/.config/nvim/img/lain.jpg'
db.preview_file_height = 10
db.preview_file_width = 48
db.custom_center = {
    {icon = '  ',
        desc = 'Recently latest session                  ',
        shortcut = 'SPC s l',
        action ='SessionLoad'},
    {icon = '  ',
        desc = 'Recently opened files                   ',
        action =  'DashboardFindHistory',
        shortcut = 'SPC f h'},
    {icon = '  ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        shortcut = 'SPC f f'},
    {icon = '  ',
        desc = 'Find  word                              ',
        action = 'Telescope live_grep',
        shortcut = 'SPC f w'},
    {icon = '  ',
        desc = 'Open Personal dotfiles                  ',
        action = 'Telescope dotfiles path=' .. home ..'/.config/nvim',
        shortcut = 'SPC f d'},
}
