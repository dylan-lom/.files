-- load standard vis module, providing parts of the Lua API
require('vis')
require('plugins/vis-ctags')
require('plugins/vis-highlight')
require('plugins/filetype')
require('plugins/vis-style')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	-- vis:command('set number')
    vis:command('set relativenumbers on')
    vis:command('set theme min')
    vis:command('set autoindent on')
    vis:command('set expandtab on')
    vis:command('set tabwidth 4')
    local todoStyle = 'back:#EBCB8B,fore:black'
    vis:command('hi TODO: '..todoStyle)
    vis:command('hi FIXME: '..todoStyle)

    -- maps
    vis:command('map! normal \\y "+y')
end)