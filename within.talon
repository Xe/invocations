not app: slack
-
tag(): user.messaging

proxy (katy|katie) <user.text> [over]: 
    insert("Cadey\\ ")
    insert(text)
proxy action (katy|katie) <user.text> [over]:
    insert("\\Cadey ")
    insert(text)
proxy default (katy|katie): "((Cadey))"

proxy (nicole|twilight|toile) <user.text> [over]:
    insert("Nicole\\ ")
    insert(text)
proxy action (nicole|twilight|toile) <user.text> [over]:
    insert("\\Nicole ")
    insert(text)
proxy default (nicole|twilight|toile): "((Nicole))"

proxy (jesse|jessica|jess) <user.text> [over]:
    insert("Jessie\\ ")
    insert(text)
proxy action (jesse|jessica|jess) <user.text> [over]:
    insert("\\Jessie ")
    insert(text)
proxy default (jesse|jessica|jess): "((Jessie))"

proxy (ash|ashley) <user.text> [over]:
    insert("Ashe\\ ")
    insert(text)
proxy action (ash|ashley) <user.text> [over]:
    insert("\\Ashe ")
    insert(text)
proxy default (ash|ashley): "((Ashe))"

proxy (sefi) <user.text> [over]:
    insert("Sephie\\ ")
    insert(text)
proxy action (sefi) <user.text> [over]:
    insert("\\Sephie ")
    insert(text)
proxy default (sefi): "((Sephie))"

proxy (my) <user.text> [over]:
    insert("Mai\\ ")
    insert(text)
proxy action (my) <user.text> [over]:
    insert("\\Mai ")
    insert(text)
proxy default (my): "((Mai))"