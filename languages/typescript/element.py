from talon import Module, actions

mod = Module()


@mod.action_class
class JSXActions:
    def jsx_element(name: str):
        """insert a beginning and closing jsx element"""
        name = actions.user.formatted_text(name, "PUBLIC_CAMEL_CASE")
        actions.user.insert_between(
            f"<{name}>",
            f"</{name}>",
        )