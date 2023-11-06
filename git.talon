great calzone add: 
    insert("git add .")
    key(enter)
great calzone commit: 
    insert("git commit -s")
    sleep(100ms)
    insert("i")
great calzone journey <user.text> [over]:
    insert("git commit -sm '")
    insert(text)
    insert("'")
    key(enter)
great calzone publish: 
    insert("git push")
    key(enter)
great calzone status:
    insert("git status")
    key(enter)