not app: slack
-
tag(): user.messaging

proxy {user.within_system_member} <user.text> [over]:
    insert(within_system_member)
    insert("\\ ")
    insert(text)

proxy action {user.within_system_member} <user.text> [over]:
    insert("\\")
    insert(within_system_member)
    insert(" ")
    insert(text)

proxy default {user.within_system_member}:
    insert("((")
    insert(within_system_member)
    insert("))")