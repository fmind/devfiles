# Configuration file for ipython.

c.TerminalInteractiveShell.editing_mode = 'vi'
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True

c.InteractiveShellApp.extensions = [
    'autoreload',
]

c.InteractiveShellApp.exec_lines = [
    'from IPython.lib.deepreload import reload',
]
