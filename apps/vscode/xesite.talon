app: vscode
-

blog conversation {user.xesite_blog_character} {user.xesite_blog_mood} [<user.text> [over]]:
    insert('<XeblogConv name="{user.xesite_blog_character}" mood="{user.xesite_blog_mood}">')
    insert("\n")
    insert(text or "")
    insert("\n")
    insert("</XeblogConv>")