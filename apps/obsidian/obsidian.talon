app: Obsidian.exe
app: Obsolete
-
tag(): user.command_mode
daily today: key(ctrl-t)
daily tomorrow: key(ctrl-shift-r)
daily yesterday: key(ctrl-r)
graph: key(ctrl-g)
graph local: key(ctrl-l)
graph time: key(ctrl-shift-g)
recent: key(ctrl-o)
file create: key(ctrl-n)
file create tab: key(ctrl-shift-n)
file rename: key(ctrl-shift-e)
file delete: key(ctrl-shift-d)
file reveal: key(shift-alt-l)
tab close: key(ctrl-w)
tab close all: key(ctrl-shift-w)
tab reopen: key(ctrl-shift-t)
tab last: key(ctrl-shift-tab)
tab next: key(ctrl-tab)
tab backlink: key(ctrl-alt-shift-b)
show settings: key(ctrl-,)
go back: key(ctrl-alt-left)
go forward: key(ctrl-alt-right)
backlink show: key(ctrl-shift-b)
follow: key(alt-enter)
follow tab: key(ctrl-alt-enter)
move up: key(shift-alt-up)
move down: key(shift-alt-down)
fold: key(shift-alt-right)
complete: key(ctrl-enter)
bar explore: key(ctrl-alt-l)
show commands [<user.text>]:
    key(ctrl-p)
    insert(user.text or "")
template insert [<user.text>]:
    key(ctrl-alt-t)
    insert(user.text or "")
search everywhere [<user.text>]:
    key(ctrl-shift-f)
    insert(user.text or "")
link insert: 
    key(ctrl-k)
    edit.paste()
vault open code: key(ctrl-alt-shift-v)
insert stamp: key(ctrl-alt-shift-d)