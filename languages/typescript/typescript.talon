code.language: typescript
code.language: typescriptreact
-

[state] interface: "interface "

state as: "as "

(method|meth) <user.text> [over]:
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert("(")
    insert(") {}")
    key(left:3)

(method|meth) <user.text> (return|returning) <user.code_type> [over]:
    insert(user.formatted_text(text_1, "PRIVATE_CAMEL_CASE"))
    insert("(")
    insert("): ")
    insert(code_type)
    insert(" {}")
    key(left)
    key(enter)

(method|meth) <user.text> (return|returning) <user.text> [over]:
    insert(user.formatted_text(text_1, "PRIVATE_CAMEL_CASE"))
    insert("(")
    insert("): ")
    insert(user.formatted_text(text_2, "PUBLIC_CAMEL_CASE"))
    insert(" {}")
    key(left)
    key(enter)

[state] async <user.cursorless_destination>:
    user.cursorless_insert(cursorless_destination, "async")

(wrap|rap) promise <user.cursorless_target>:
    user.cursorless_command("setSelectionBefore", cursorless_target)
    insert("Promise<")
    user.cursorless_command("setSelectionAfter", cursorless_target)
    insert(">")

snake member <user.text> [over]:
    insert(user.formatted_text(text, "SNAKE_CASE"))

optional snake member <user.text> [over]:
    insert(user.formatted_text(text, "SNAKE_CASE"))
    insert("?")

member <user.text> [over]:
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

optional member <user.text> [over]:
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert("?")

(slice|array) of <user.code_type> [over]:
    insert(code_type)
    insert("[]")

(slice|array) of <user.text> [over]:
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert("[]")

of type [<user.code_type> [over]]: 
    insert(": ")
    insert(code_type or "")

of type <user.text> [over]:
    insert(": ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))