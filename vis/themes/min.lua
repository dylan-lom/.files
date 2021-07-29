-- min
-- by Dylan Lom

local lexers = vis.lexers

local colors = {
	['light'] = '#E5E9F0',
	['dark'] = '#2E3440',
	['emphasis'] = '#88C0D0',
	['dim'] = '#5E81AC',
	['dimmer'] = '#434C5E',
	['warn'] = '#EBCB8B',
}

lexers.STYLE_DEFAULT = 'back:black,fore:white'
lexers.STYLE_NOTHING = ''
lexers.STYLE_CLASS = 'fore:'..colors.emphasis
lexers.STYLE_COMMENT = 'fore:'..colors.dim..',italics'
lexers.STYLE_CONSTANT = ''
lexers.STYLE_DEFINITION = ''
lexers.STYLE_ERROR = 'fore'..colors.warn..',italics'
lexers.STYLE_FUNCTION = 'fore:'..colors.emphasis
lexers.STYLE_KEYWORD = 'fore:'..colors.emphasis
lexers.STYLE_LABEL = ''
lexers.STYLE_NUMBER = ''
lexers.STYLE_OPERATOR = ''
lexers.STYLE_REGEX = ''
lexers.STYLE_STRING = ''
lexers.STYLE_PREPROCESSOR = 'fore:'..colors.emphasis
lexers.STYLE_TAG = ''
lexers.STYLE_TYPE = 'fore:'..colors.emphasis
lexers.STYLE_VARIABLE = ''
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = ''
lexers.STYLE_IDENTIFIER = ''

lexers.STYLE_LINENUMBER = 'fore:'..colors.dimmer
lexers.STYLE_CURSOR_PRIMARY = 'back:'..colors.light..',fore:'..colors.dark
lexers.STYLE_CURSOR = 'back:'..colors.dimmer..',fore:'..colors.dark
lexers.STYLE_CURSOR_LINE = lexers.STYLE_CURSOR
lexers.STYLE_COLOR_COLUMN = lexers.STYLE_CURSOR -- TODO: Theme this differently to multiple cursors
lexers.STYLE_SELECTION = lexers.STYLE_CURSOR
lexers.STYLE_STATUS = 'back:'..colors.dark -- TODO: I'm not really happy with this really
lexers.STYLE_STATUS_FOCUSED = 'back:'..colors.dimmer
lexers.STYLE_SEPARATOR = 'fore:'..colors.dimmer
lexers.STYLE_INFO = ''
lexers.STYLE_EOF = ''

