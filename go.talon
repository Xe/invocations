code.language: go
-
state context: " ctx "
[state] context (are you|argue): " ctx context.Context "

state any: " any "

return raised result: "return &result"

raise <user.cursorless_target>: insert("&")
lower <user.cursorless_target>: insert("*")

[state] get: " <- "

[state] package (man|main): "package main"

declare <user.text> to be:
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert(" := ")
    sleep(100ms)

public function <user.text> [over]:
    insert("func ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert("(")
    sleep(100ms)