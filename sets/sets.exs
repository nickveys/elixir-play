set1 = Enum.into(1..4, HashSet.new)
|> IO.inspect

IO.puts(Set.member?(set1, 3))
IO.puts(Set.member?(set1, 5))

set2 = Enum.into(3..8, HashSet.new)
|> IO.inspect

Set.union(set1, set2)
|> IO.inspect

Set.difference(set1, set2)
|> IO.inspect

Set.difference(set2, set1)
|> IO.inspect

Set.intersection(set1, set2)
|> IO.inspect
