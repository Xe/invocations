from talon import Module, actions

mod = Module()


@mod.capture(rule="(pointer | raised)")
def go_pointer(m) -> str:
    return "*" if "pointer" or "raised" in m else ""


@mod.capture(rule="public|private")
def go_visibility(m) -> str:
    return "public" if "public" in m else "private"


@mod.action_class
class GoActions:
    def go_method(go_pointer: str, letter: str, type_public: str, type_name: str, method_public: str, method_name: str):
        """
        Inserts a Go method
        """
        type_name = actions.user.formatted_text(type_name, "PUBLIC_CAMEL_CASE" if type_public == "public" else "PRIVATE_CAMEL_CASE")
        method_name = actions.user.formatted_text(method_name, "PUBLIC_CAMEL_CASE" if method_public == "public" else "PRIVATE_CAMEL_CASE")
        actions.insert("func ({} {} {}) {}(".format(letter, go_pointer or "", type_name, method_name))
