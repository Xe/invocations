code.language: javascriptreact
code.language: typescriptreact
-

self close element <user.text> [over]:
    insert("<")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert(" />")

element <user.text> [over]:
    user.jsx_element(text)

[state] fragment:
    user.insert_between("<>", "</>")