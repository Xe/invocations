app: slack
hostname: Camellia
-

# Update fizz status upon completion of task
fizz update [<user.text> [over]]:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("update ")
    insert(text or "")

# Make a "fuck" comment
fizz fuck [<user.text> [over]]:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("fuck ")
    insert(text or "")

# Praise a user
fizz praise:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("praise @")

# Update fizz changelog
fizz changelog [<user.text> [over]]:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("changelog ")
    insert(text or "")