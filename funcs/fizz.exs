fb = fn
       (0, 0, _) -> "FizzBuzz"
       (0, _, _) -> "Fizz"
       (_, 0, _) -> "Buzz"
       (_, _, x) -> x
     end

fb2 = fn n -> fb.(rem(n, 3), rem(n, 5), n) end
IO.puts(fb2.(10))
IO.puts(fb2.(11))
IO.puts(fb2.(12))
IO.puts(fb2.(13))
IO.puts(fb2.(14))
IO.puts(fb2.(15))
IO.puts(fb2.(16))
