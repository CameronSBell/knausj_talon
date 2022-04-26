os: windows
app: Microsoft Visual Studio 2022
app: devenv.exe
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

# Settings
show settings: key(alt-t o)
#show shortcuts:
#show snippets:

# Display
fullscreen switch: key(shift-alt-enter)
wrap switch: key(ctrl-e ctrl-w)

# File Commands
file hunt [<user.text>]:
    key(ctrl-shift-t)
    insert(text or "")
file create: key(ctrl-n)
#file open folder:
#file rename: key(ctrl-[ s f2)
file reveal: key(shift-alt-l)

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
refactor field: key(ctrl-r ctrl-e)
refactor interface: key(ctrl-r ctrl-i)
refactor method: key(ctrl-r ctrl-m)
refactor reorder parameters: key(ctrl-r ctrl-o)
refactor remove parameters: key(ctrl-r ctrl-v)
refactor that: key(ctrl-r ctrl-r)

#code navigation
(go declaration | follow): key(ctrl-f12)
go back: key(ctrl--)
go forward: key(ctrl-shift--)
go imp: key(f12)
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
go usage: key(shift-f12)
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
toggle break point: key(f9)
debug step over: key(f10)
debug step into: key(f11)
debug step out [of]: key(f10)
debug start: key(f5)
debug stopper: key(shift-f5)
debug continue: key(f5)
