app: Ssms.exe
app: Microsoft SQL Server Management Studio
-
tag(): user.command_mode
tag(): user.line_commands
(file|query) new: key(ctrl-n)
open file: key(ctrl-o)
query execute: key(f5)
query (parse|test): key(ctrl-f5)
show [query] plan: key(ctrl-l)

tab last: key(ctrl-shift-tab)
tab next: key(ctrl-tab)
tab close: key(ctrl-f4)

panel solution: key(ctrl-alt-l)
panel object: key(f8)