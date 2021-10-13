" vimwiki
let default = {}
let default.path = '~/Documents/Journal'
let default.index = 'Index'
let default.syntax = 'default'
let default.ext = '.md'

let fleeting_notes = {}
let fleeting_notes.path = '~/Documents/Journal/Fleeting Notes'
let fleeting_notes.index = 'FleetingNotes'
let fleeting_notes.syntax = 'markdown'
let fleeting_notes.ext = '.md'

let permanent_notes = {}
let permanent_notes.path = '~/Documents/Journal/Permanent Notes'
let permanent_notes.index = 'PermanentNotes'
let permanent_notes.syntax = 'markdown'
let permanent_notes.ext = '.md'

let literature_notes = {}
let literature_notes.path = '~/Documents/Journal/Literature Notes'
let literature_notes.index = 'LiteratureNotes'
let literature_notes.syntax = 'markdown'
let literature_notes.ext = '.md'

let g:vimwiki_list = [default, fleeting_notes, literature_notes, permanent_notes]

