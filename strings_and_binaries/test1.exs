header = <<0x03 :: size(4), 0x05 :: size(4)>>
body = "This is a body of something"

whole = header <> body
IO.puts whole
IO.inspect whole

whole
|> String.codepoints
|> IO.inspect
