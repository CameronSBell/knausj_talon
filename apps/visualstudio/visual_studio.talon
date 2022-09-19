os: windows
app: visual_studio
-
tag(): user.tabs
tag(): user.line_commands
tag(): user.find_and_replace
tag(): user.snippets
tag(): user.multiple_cursors
#multiple_cursor.py support end

# Panels
panel solution: key(ctrl-alt-l)
panel properties: key(f4)
panel output: key(ctrl-alt-o)
panel class: key(ctrl-shift-c)
panel errors: key(ctrl-\ ctrl-e)
panel design: key(shift-f7)
panel marks: key(ctrl-k ctrl-w)
panel breakpoints: key(ctrl-alt-b)

# resharper
move member down: key(ctrl-shift-alt-down)
move member up: key(ctrl-shift-alt-up)
member down: key(alt-down)
member up: key(alt-up)
rename that: key(ctrl-r r)
comment line: key(ctrl-alt-/)
to do explorer: key(ctrl-alt-d)
action: key(alt-enter)

# custom strings
to do comment [<user.text>]:
    insert(" // TODO: ")
    sleep(100ms)
    insert(text or "i")
local var <phrase>:
    insert("var ")
    insert(user.formatted_text(phrase, "PRIVATE_CAMEL_CASE"))
    insert(" = ")
instant <phrase>:
    insert("new ")
    insert(user.formatted_text(phrase, "PUBLIC_CAMEL_CASE"))
    insert("(")
# Resharper tests
test run: key(ctrl-u r)
test repeat: key(ctrl-u u)
test debug: key(ctrl-u d)
test run solution: key(ctrl-u l)
test run session: key(ctrl-u y)
test sessions: key(ctrl-alt-t)
test explorer: key(ctrl-alt-u)

# visual studio build
build all: key(ctrl-shift-b)
# ClassViewContextMenus.ClassViewProject.SSDTPublish
database publish: key(alt-b alt-d)

# Settings
show settings: key(alt-t o)
# Tools.ImportandExportSettings
export settings: key(ctrl-e ctrl-x)
#show shortcuts:
#show snippets:

# Display
fullscreen switch: key(shift-alt-enter)
wrap switch: key(ctrl-e ctrl-w)

# File Commands
file hunt [<user.text>]:
    key(ctrl-shift-t)
    insert(text or "")

# Project.AddNewItem
file create: key(ctrl-shift-a)
file delete: key(shift-alt-l delete)
# File.Rename
file rename: key(shift-alt-l ctrl-shift-e ctrl-shift-r)
file reveal: key(shift-alt-l)
# Project.NewFolder
folder create: key(ctrl-shift-alt-f)

# Language Features
hint show: key(ctrl-shift-space)
definition show: key(f12)
definition peek: key(alt-f12)
format that: key(ctrl-k ctrl-d)
format selection: key(ctrl-k ctrl-f)
imports fix: key(ctrl-r ctrl-g)

# problem next:
# problem last:
# problem fix:
# Resharper Re-factoring
encapsulate field: key(ctrl-r ctrl-e)
refactor in line: key(ctrl-r ctrl-i)
extract method: key(ctrl-r ctrl-m)
change signature: key(ctrl-r s)
refactor reorder parameters: key(ctrl-r ctrl-o)
refactor remove parameters: key(ctrl-r ctrl-v)
refactor that: key(ctrl-r ctrl-r)
introduce variable: key(ctrl-r v)
introduce field: key(ctrl-r f)
introduce parameter: key(ctrl-r p)

#code navigation
(go declaration | follow): key(ctrl-f12)
go back: key(ctrl--)
go forward: key(ctrl-shift--)
drill: key(f12)
recent [<user.text>]:
    key(ctrl-,)
    sleep(100ms)
    insert(text or "")
go edits [<user.text>]:
    key(ctrl-shift-,)
    sleep(100ms)
    insert(text or "")
search everywhere [<user.text>]:
    key(ctrl-t)
    sleep(100ms)
    insert(text or "")
go member [<user.text>]:
    key(alt-\)
    sleep(100ms)
    insert(text or "")
go reference: key(shift-f12)
# Resharper code navigation
use next: key(ctrl-alt-pagedown)
use last: key(ctrl-alt-pageup)

# Bookmarks.
go marks: key(ctrl-k ctrl-w)
toggle mark: key(ctrl-k ctrl-k)
go next mark: key(ctrl-k ctrl-n)
go last mark: key(ctrl-k ctrl-p)

# Folding
fold toggle: key(ctrl-m ctrl-m)
fold toggle all: key(ctrl-m ctrl-l)
fold definitions: key(ctrl-m ctrl-o)

#Debugging
break point: key(f9)
debug step over: key(f10)
debug step into: key(f11)
debug step out [of]: key(shift-f11)
debug start: key(f5)
debug stopper: key(shift-f5)
debug continue: key(f5)
debug next [statement]: key(alt-keypad_multiply)

# Specflow custom commands
# EditorContextMenus.CodeWindow.SpecFlow.DefineSteps
step define: key(ctrl-b ctrl-d)
# EditorContextMenus.CodeWindow.SpecFlow.RenameStep
step rename: key(ctrl-b ctrl-r)
# EditorContextMenus.CodeWindow.SpecFlow.FindStepDefinitionUsages
step usage: key(ctrl-b ctrl-f)