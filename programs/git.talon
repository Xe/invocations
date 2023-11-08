great calzone (add|ad): 
    insert("git add .")
    key(enter)

great calzone commit: 
    insert("git commit -s")
    key(enter)
    sleep(100ms)
    insert("i")

great calzone clone:
    insert("git clone ")

great calzone fuck go back:
    insert("git reset --hard")

great calzone diverge <user.text> [over]:
    insert("git checkout -b Xe/")
    insert(user.formatted_text(text, "kebab"))

great calzone journey [<user.text>] [over]:
    insert("git commit -sm '")
    insert(text or "")
    insert("'")
    key(left)

great calzone publish: 
    insert("git push")
    key(enter)

great calzone integrate:
    insert("git pull")
    key(enter)

great calzone status:
    insert("git status")
    key(enter)