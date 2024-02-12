code.language: go
-
slog {user.go_slog_level} [<user.text> [over]]:
    insert('slog.')
    insert(go_slog_level)
    insert('("')
    insert(text or "")
    insert('")')

slog {user.go_slog_level} with error [<user.text> [over]]:
    insert('slog.')
    insert(go_slog_level)
    insert('("')
    insert(text or "")
    insert('", "err", err)')