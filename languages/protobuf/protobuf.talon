code.language: protobuf
-

[state] import:
    user.insert_between('import "', '";\n')

[state] import {user.protobuf_common_import}:
    insert('import "google/protobuf/{protobuf_common_import}.proto";\n')

[state] message <user.text> [over]:
    insert("message ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert(" {\n")

[state] service <user.text> [over]:
    insert("service ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert(" {\n")

[state] funk <user.text> [over]:
    insert("rpc ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert(" (")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert("Req) returns (")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
    insert("Resp);\n")

of type {user.protobuf_type}:
    insert("{protobuf_type} ")

of type <user.text> [over]:
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

named <user.text> [over]:
    insert(" ")
    insert(user.formatted_text(text, "SNAKE_CASE"))
    insert(" ")

number <user.number_string>:
    insert(" = ")
    insert(number_string)
    insert(";\n")

[state] (field|value) [of type] {user.protobuf_type} [named] <user.text> [over] number <user.number_string> [over]:
    insert(protobuf_type)
    insert(" ")
    insert(user.formatted_text(text, "SNAKE_CASE"))
    insert(" = ")
    insert(number_string)
    insert(";\n")

[state] (field|value) [of type] <user.text> [named] <user.text> number <user.number_string> [over]:
    insert(text_1)
    insert(" ")
    insert(user.formatted_text(text_2, "SNAKE_CASE"))
    insert(" = ")
    insert(number_string)
    insert(";\n")