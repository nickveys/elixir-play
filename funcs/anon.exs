sum = fn a, b -> a + b end
IO.inspect sum.(1, 2)

swap = fn {a, b} -> {b, a} end
IO.inspect swap.({3, 1})

list_concat = fn left, right -> left ++ right end
list_concat.([:a, :b], [:c, :d])
|> IO.inspect

pair_tuple_to_list = fn {a, b} -> [a, b] end
pair_tuple_to_list.({1234, 5678})
|> IO.inspect
