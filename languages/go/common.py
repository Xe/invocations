from talon import Context, Module, actions

mod = Module()
ctx = Context()
ctx.matches = r"""
code.language: go
"""


def base_function(text: str, visibility: str):
    """Inserts a public function definition, this assumes a lot about how your editor works"""
    result = "func {}() {{\n\n}}".format(
        actions.user.formatted_text(
            text, visibility
        )
    )
    actions.user.paste(result)
    actions.edit.left()
    actions.edit.left()
    actions.edit.left()
    actions.edit.left()
    actions.edit.left()
    actions.edit.left()


@ctx.action_class("user")
class UserActions:
    def code_insert_true():
        actions.auto_insert(" true ")

    def code_insert_false():
        actions.auto_insert(" false ")

    def code_insert_null():
        actions.auto_insert(" nil ")

    def code_insert_is_null():
        actions.auto_insert(" == nil ")

    def code_insert_is_not_null():
        actions.auto_insert(" != nil ")

    def code_comment_documentation():
        """inserts godoc syntax"""
        actions.key("up")
        actions.auto_insert("// ")

    def code_default_function(text: str):
        if text == "main":
            actions.user.code_private_function(text)
        else:
            actions.user.code_public_function(text)

    def code_public_function(text: str):
        base_function(text, "PUBLIC_CAMEL_CASE")

    def code_private_function(text: str):
        base_function(text, "PRIVATE_CAMEL_CASE")

    def code_operator_subscript():
        actions.user.insert_between("[", "]")

    def code_operator_assignment():
        actions.auto_insert(" = ")

    def code_operator_subtraction_assignment():
        actions.auto_insert(" -= ")

    def code_operator_addition_assignment():
        actions.auto_insert(" += ")

    def code_operator_multiplication_assignment():
        actions.auto_insert(" *= ")

    def code_operator_division_assignment():
        actions.auto_insert(" /= ")

    def code_operator_modulo_assignment():
        actions.auto_insert(" %= ")

    def code_operator_increment():        
        actions.auto_insert(" ++ ")

    def code_operator_bitwise_and_assignment():
        actions.auto_insert(" &= ")

    def code_operator_bitwise_or_assignment():
        actions.auto_insert(" |= ")

    def code_operator_bitwise_exclusive_or_assignment():
        actions.auto_insert(" ^= ")

    def code_operator_bitwise_left_shift_assignment():
        actions.auto_insert(" <<= ")

    def code_operator_bitwise_right_shift_assignment():
        actions.auto_insert(" >>= ")

    def code_operator_bitwise_and():
        actions.auto_insert(" & ")

    def code_operator_bitwise_or():
        actions.auto_insert(" | ")

    def code_operator_bitwise_exclusive_or():
        actions.auto_insert(" ^ ")

    def code_operator_bitwise_left_shift():
        actions.auto_insert(" << ")

    def code_operator_bitwise_right_shift():
        actions.auto_insert(" >> ")

    def code_operator_lambda():
        actions.user.insert_between("func() {", "}")

    def code_operator_subtraction():
        actions.auto_insert(" - ")

    def code_operator_addition():
        actions.auto_insert(" + ")

    def code_operator_multiplication():
        actions.auto_insert(" * ")

    def code_operator_division():
        actions.auto_insert(" / ")

    def code_operator_modulo():
        actions.auto_insert(" % ")

    def code_operator_equal():
        actions.auto_insert(" == ")

    def code_operator_not_equal():
        actions.auto_insert(" != ")

    def code_operator_less_than():
        actions.auto_insert(" < ")

    def code_operator_greater_than():
        actions.auto_insert(" > ")

    def code_operator_less_than_or_equal_to():
        actions.auto_insert(" <= ")

    def code_operator_greater_than_or_equal_to():
        actions.auto_insert(" >= ")

    def code_operator_and():
        actions.auto_insert(" && ")
    
    def code_operator_or():
        actions.auto_insert(" || ")

    def code_operator_indirection():
        actions.auto_insert("*")

    def code_operator_address_of():
        actions.auto_insert("&")

    def code_operator_structure_dereference():
        actions.auto_insert(".")