code.language: go
-

[state] cats: " ctx "
[state] [context|cats] (are you|argue): " ctx context.Context "

[state] [air|oops]: " err "
[state] [air|oops] (are you|argue): " err error "
[state] boom: " error "

state any: " any "

return raised result: "return &result"
return raised result and (null|nil): "return &result, nil"
return result and (null|nil): "return result, nil"
return (nil|null) and error: "return nil, err"

raise <user.cursorless_target>:
    user.cursorless_command("setSelectionBefore", cursorless_target)
    insert("&")
lower <user.cursorless_target>:
    user.cursorless_command("setSelectionBefore", cursorless_target)
    insert("*")

name <user.text>:
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

[state] get: " <- "

[state] package (man|main): "package main"
[state] package <user.text> [over]:
    insert("package ")
    insert(user.formatted_text(text, "smash"))
    insert("\n\n")

to be: " := "

declare <user.text> to be:
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert(" := ")

[state] var <user.text> [over]:
    insert("var ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert(" ")

[state] const <user.text> [over]:
    insert("const ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert(" ")

[state] type <user.text> [over]:
    insert("type ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert(" ")

of type [<user.go_pointer>] <user.code_type>:
    insert(" ")
    insert(go_pointer or "")
    insert(code_type)

of type [<user.go_pointer>] <user.text> [over]:
    insert(" ")
    insert(go_pointer or "")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

of type [<user.go_pointer>] <user.text> dot <user.text> [over]:
    insert(" ")
    insert(go_pointer or "")
    insert(user.formatted_text(text_1, "all down"))
    insert(".")
    insert(user.formatted_text(text_2, "PUBLIC_CAMEL_CASE"))

function main:
    insert("func main() {\n")
    sleep(100ms)

(method|meth) <user.letter> [<user.go_pointer>] [<user.go_visibility>] <user.text> [over] [<user.go_visibility>] named <user.text> [over]:
    user.go_method(go_pointer or "", letter, go_visibility_1 or "public", text_1, go_visibility_2 or "public", text_2)