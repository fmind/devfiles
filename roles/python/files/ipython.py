# Configuration file for ipython.

c.InteractiveShellApp.extensions = [
    "autoreload"
]

c.InteractiveShellApp.exec_lines = [
    "%autoreload 2",
    "from IPython.lib import deepreload as R",
]

c.TerminalIPythonApp.force_interact = True
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True
