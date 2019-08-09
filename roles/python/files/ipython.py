# Configuration file for ipython.

c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True

InteractiveShellApp.extensions = [
    'autoreload',
    'storemagic',
]

c.InteractiveShellApp.exec_lines = [
    '%autoreload 2',
    'from IPython.lib import deepreload as reload'
]
