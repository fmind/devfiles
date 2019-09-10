# Configuration file for ipython.

c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.extra_open_editor_shortcuts = True

c.InteractiveShellApp.extensions = [
    'autoreload',
    'storemagic',
]

c.InteractiveShellApp.exec_lines = [
    '%autoreload 2',
    'import re',
    'import pydoc',
    'from inspect import *',
    'from functools import *',
    'from itertools import *',
    'from collections import *',
    'from pathlib import Path',
    'from IPython.lib.deepreload import reload',
]
