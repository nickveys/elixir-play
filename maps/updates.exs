map = %{ key1: 25, key2: 15 }

%{ map | key1: 1 }
|> IO.inspect
