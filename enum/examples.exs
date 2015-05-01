require Integer

Enum.to_list(1..5)
|> IO.inspect

Enum.concat([1, 2, 3], [4, 5, 6])
|> IO.inspect

Enum.concat([1, 2, 3], 'abc')
|> IO.inspect

Enum.map(1..5, &(10* &1))
|> IO.inspect

Enum.map(2..4, &String.duplicate("*", &1))
|> IO.inspect

Enum.at(2..5, 2)
|> IO.inspect

Enum.at(2..5, 12)
|> IO.inspect

Enum.at(2..5, 12, :not_found)
|> IO.inspect

Enum.filter(1..255, &(&1 > 128))
|> IO.inspect

Enum.filter(1..25, &Integer.is_even/1)
|> IO.inspect

Enum.filter(1..25, &Integer.is_odd/1)
|> IO.inspect

:random.seed(:os.timestamp)
1..255
|> Enum.shuffle
|> Enum.take(5)
|> IO.inspect

2..5
|> Enum.join
|> IO.inspect
