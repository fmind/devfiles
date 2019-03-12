from ptpython.layout import CompletionVisualisation


def configure(repl):
    repl.complete_while_typing = True
    repl.completion_visualisation = CompletionVisualisation.MULTI_COLUMN

    repl.confirm_exit = False

    repl.enable_auto_suggest = True
    repl.enable_history_search = False
    repl.enable_input_validation = True
    repl.enable_mouse_support = False
    repl.enable_open_in_editor = True
    repl.enable_syntax_highlighting = True
    repl.enable_system_bindings = True

    repl.highlight_matching_parenthesis = True
    repl.insert_blank_line_after_output = False
    repl.paste_mode = False
    repl.prompt_style = "ipython"

    repl.show_docstring = False
    repl.show_line_numbers = False
    repl.show_meta_enter_message = False
    repl.show_sidebar_help = False
    repl.show_signature = True
    repl.show_status_bar = False

    repl.use_code_colorscheme("monokai")

    repl.vi_mode = True
    repl.wrap_lines = True
