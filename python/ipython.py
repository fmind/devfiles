# Configuration file for ipython.

c.Completer.use_jedi = True

c.TerminalIPythonApp.force_interact = True

c.TerminalInteractiveShell.colors = "Linux"
c.TerminalInteractiveShell.editing_mode = "vi"
c.TerminalInteractiveShell.confirm_exit = False

c.TerminalInteractiveShell.extra_open_editor_shortcuts = True

c.InteractiveShellApp.extensions = ["autoreload", "storemagic"]

c.InteractiveShellApp.exec_lines = [
    "import re",
    "import csv",
    "import json",
    "%autoreload 2",
]
