fb = fn
       (0, 0, _) -> "FizzBuzz"
       (0, _, _) -> "Fizz"
       (_, 0, _) -> "Buzz"
       (_, _, x) -> x
     end

fb2 = fn n -> fb.(rem(n, 3), rem(n, 5), n) end
Enum.each(1..20, &(IO.puts(fb2.(&1))))
