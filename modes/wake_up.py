from talon import Module, actions

mod = Module()

def mute_meeting():
    actions.key("ctrl-shift-alt-m")

def unmute_meeting():
    actions.key("ctrl-shift-alt-n")

@mod.action_class
class Actions:
    def toggle_talon_and_meeting_mute():
        """Flips the state of talon and mutesync so that they are always opposite."""
        if actions.speech.enabled():
            actions.speech.disable()
            unmute_meeting()
        else:
            mute_meeting()
            actions.speech.enable()