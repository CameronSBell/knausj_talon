from pickle import FALSE
from typing import Any

from talon import Context, Module, actions

from .command_client import NoFileServerException, NotSet, run_command
import numpy as np
import cv2
import time

min_focus = 600       # Focal value for the camera.
neutral_focus = 215
last_set_focus = neutral_focus
cap = cv2.VideoCapture(0)
ctx = Context()

ctx.matches = r"""
app: vscode
"""
ctx.tags = ["user.command_client"]
mod = Module()


def move_focus_to_target(target_focus: int):
    """Execute command via command server, falling back to command palette if directory not present."""
    increment = 1 if last_set_focus <= target_focus else -1
    for transition_focus_level in range(last_set_focus, target_focus + increment, increment*5):
        cap.set(cv2.CAP_PROP_FOCUS, transition_focus_level)  # Focus
        time.sleep(1 / 1000)
    cap.release()
    last_set_focus = target_focus

@mod.action_class
class Actions:
    def blur_webcam():
        """Execute command via vscode command server, if available, or fallback
        to command palette."""
        move_focus_to_target(min_focus)
    
    def focus_webcam():
        """Execute command via visual studio command server."""
        move_focus_to_target(neutral_focus)






