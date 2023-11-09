code.language: typescript
code.language: typescriptreact
-

[state] interface: "interface "

state as: "as "

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

of type [<user.code_type> [over]]: 
    insert(": ")
    insert(code_type or "")

of type <user.text> [over]:
    insert(": ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))