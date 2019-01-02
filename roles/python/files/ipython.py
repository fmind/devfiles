# Configuration file for ipython.

c.InteractiveShellApp.extensions = [
    "autoreload"
]

c.InteractiveShellApp.exec_lines = [
    "%autoreload 2",
    "from IPython.lib import reload as R",
    "from IPython.lib import deepreload as DR",
]

c.TerminalIPythonApp.force_interact = True
c.TerminalInteractiveShell.editing_mode = 'vi'
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True
