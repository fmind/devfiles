# Configuration file for ipython.

c.Completer.use_jedi = True

c.TerminalIPythonApp.force_interact = True

c.TerminalInteractiveShell.colors = "Linux"
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.editing_mode = "emacs"

c.InteractiveShellApp.extensions = ["autoreload"]

c.InteractiveShellApp.exec_lines = ["%autoreload 2"]

c.TerminalInteractiveShell.extra_open_editor_shortcuts = True