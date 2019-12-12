# Configuration file for ipython.

c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True

c.InteractiveShellApp.exec_lines = [
    '%load_ext autoreload',
    'from IPython.lib.deepreload import reload',
]
