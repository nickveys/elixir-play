defmodule FizzBuzz do

  def upto(n) when n > 0 do
    1..n
    |> Enum.map(&fizzbuzz/1)
  end

  defp fizzbuzz(n) do
    case n do
      _ when rem(n, 3) == 0 and rem(n, 5) == 0 ->
        "FizzBuzz"
      _ when rem(n, 3) == 0 ->
        "Fizz"
      _ when rem(n, 5) == 0 ->
        "Buzz"
      _ -> n
    end
  end

end

FizzBuzz.upto(5)
|> IO.inspect
