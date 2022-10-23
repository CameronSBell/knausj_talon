from talon import Module, actions

mod = Module()

def mute_meeting():
    actions.key("ctrl-shift-alt-m")

def unmute_meeting():
    actions.key("ctrl-shift-alt-n")

@mod.action_class
class Actions:
    def toggle_talon_and_meeting_mute():
        """Activates a "temporary speech" mode that can be disabled lazily,
        so that the actual disable command happens after whatever phrase
        finishes next."""
        if actions.speech.enabled():
            actions.speech.disable()
            unmute_meeting()
        else:
            actions.speech.enable()
            mute_meeting()