app: vscode
-
tag(): user.git

blog conversation:
    insert('<XeblogConv name="name" mood="mood">')
    insert("\n\n")
    insert("</XeblogConv>")

blog conversation <user.text> [over]:
    insert('<XeblogConv name="name" mood="mood">')
    insert("\n")
    insert(text)
    insert("\n")
    insert("</XeblogConv>")