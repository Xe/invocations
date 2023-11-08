from talon import Module, actions

mod = Module()


@mod.capture(rule="(info|debug|warn|error)")
def go_slog_level(m) -> str:
    return actions.user.formatted_text(m, "PUBLIC_CAMEL_CASE")