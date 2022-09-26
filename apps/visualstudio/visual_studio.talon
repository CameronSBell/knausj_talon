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
panel error list: key(ctrl-\ ctrl-e)
panel design: key(shift-f7)
panel marks: key(ctrl-k ctrl-w)
panel break: key(ctrl-alt-b)

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
database publish: user.vstudio("ClassViewContextMenus.ClassViewProject.SSDTPublish")

# Settings
show settings: key(alt-t o)
# Tools.ImportandExportSettings
export settings: key(ctrl-e ctrl-x)
#test rename: user.vstudio("Tools.ImportandExportSettings") this line does not work, visual studio throws an error 
#show shortcuts:
#show snippets:

# Display
fullscreen switch: key(shift-alt-enter)
wrap switch: key(ctrl-e ctrl-w)

# File Commands
file hunt [<user.text>]:
    key(ctrl-shift-t)
    insert(text or "")
file create: user.vstudio("Project.AddNewItem")
file delete:
    user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
    key(delete)
file rename:
    user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
    user.vstudio("File.Rename")
file reveal: user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
folder create: user.vstudio("Project.NewFolder")

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
debug restart: key(ctrl-shift-f5)
debug stopper: key(shift-f5)
debug continue: key(f5)
debug next [statement]: key(alt-keypad_multiply)

# Specflow custom commands
step define: user.vstudio("EditorContextMenus.CodeWindow.SpecFlow.DefineSteps")
step rename: user.vstudio("EditorContextMenus.CodeWindow.SpecFlow.RenameStep")
step usage: user.vstudio("EditorContextMenus.CodeWindow.SpecFlow.FindStepDefinitionUsages")

# Miscellaneous custom commands
nuget project: 
    user.vstudio("Project.ManageNuGetPackages")
    sleep(100ms)
    user.vstudio("Project.ManageNuGetPackages")
    key(delete)
    sleep(200ms)
    key(esc)
nuget solution: 
    user.vstudio("Tools.ManageNuGetPackagesForSolution")
    sleep(100ms)
    user.vstudio("Tools.ManageNuGetPackagesForSolution")
    key(delete)
    sleep(200ms)
    key(esc)
break switch: user.vstudio("Debug.EnableBreakpoint")
break enable: user.vstudio("Debug.EnableAllBreakpoints")
break delete: user.vstudio("Debug.DeleteAllBreakpoints")
break disable: user.vstudio("Debug.DisableAllBreakpoints")
start application: user.vstudio("Debug.StartWithoutDebugging")
start set: user.vstudio("Project.SetasStartupProject")
start set solution:
    user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
    user.vstudio("SolutionExplorer.CollapseAll")
    key("home")
    user.vstudio("Project.SetasStartupProject")
manage secrets:
    user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
    user.vstudio("SolutionExplorer.CollapseAll")
    user.vstudio("ProjectandSolutionContextMenus.Project.ManageUserSecrets")
nave project: 
    user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
    user.vstudio("SolutionExplorer.CollapseAll")
nave project file:
    user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
    user.vstudio("SolutionExplorer.CollapseAll")
    key(enter)
#project add: user.vstudio("File.NewProject") doesn't work due to invalid project type error
nave solution:
    user.vstudio("ReSharper.ReSharper_LocateInSolutionOrAssemblyExplorer")
    user.vstudio("SolutionExplorer.CollapseAll")
    key("home")

# Multiple tabs switcher commands
tab next <user.ordinals>: user.tab_next_multiple(ordinals)