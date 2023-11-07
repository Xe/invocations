code.language: go
-
state context: " ctx "
[state] context (are you|argue): " ctx context.Context "

state any: " any "

return raised result: "return &result"
return raised result and null: "return &result, nil"
return null and error: "return nil, err"

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
[state] package <user.text>:
    insert("package ")
    insert(user.formatted_text(text, "smash"))
    insert("\n\n")

declare <user.text> to be:
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert(" := ")
    sleep(100ms)

public function <user.text> [over]:
    insert("func ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert("(")
    sleep(100ms)