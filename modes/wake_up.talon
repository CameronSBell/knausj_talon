#defines the commands that sleep/wake Talon
mode: all
-
^welcome back$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
^go to sleep [<phrase>]$: speech.disable()
^wake up$: speech.enable()

^wake teams$:
    speech.disable()
    key(ctrl-shift-alt-n)
#    user.focus_webcam()

^wake teams stay$:
    speech.disable()
    key(ctrl-shift-alt-n)
    user.switcher_focus("Microsoft Teams")

^sleep teams$:
    speech.enable()
    key(ctrl-shift-alt-m)
    #    user.blur_webcam()

key(ctrl-shift-alt-t): user.toggle_talon_and_meeting_mute()
