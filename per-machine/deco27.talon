app: slack
hostname: DECO27
-

# Update fizz status upon completion of task
fizz update <user.text> [over]:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("update ")
    insert(text)

# Make a "fuck" comment
fizz fuck <user.text> [over]:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("fuck ")
    insert(text)

# Praise a user
fizz praise:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("praise ")

# Update fizz changelog
fizz changelog <user.text> [over]:
    insert("@fizz")
    sleep(100ms)
    key(enter)
    insert("changelog ")
    insert(text)