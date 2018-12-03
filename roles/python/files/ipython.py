# Configuration file for ipython.

c.InteractiveShellApp.extensions = [
    "autoreload"
]

c.InteractiveShellApp.exec_lines = [
    "from importlib import reload",
    "%autoreload 2",
]

c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True
