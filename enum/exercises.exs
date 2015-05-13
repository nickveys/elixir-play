require Integer

defmodule MyEnum do

  def all?(collection, fun \\ fn x -> x end)

  def all?([], _), do: true
  def all?([head | tail], fun) do 
    fun.(head) && all?(tail, fun)
  end

  def each([ head | tail ], fun) do
    fun.(head)
    each(tail, fun)
  end
  def each([], _), do: nil

  def filter([ head | tail ], pred) do
    if pred.(head) do
      [ head | filter(tail, pred) ]
    else
      filter(tail, pred)
    end
  end
  def filter([], _), do: []

  def flatten(list) do
    _flatten(list)
    |> Enum.reverse
  end

  defp _flatten(list, acc \\ [])
  defp _flatten([ head | tail ], acc)
  when is_list(head) do
    _flatten(tail, _flatten(head, acc))
  end
  defp _flatten([ head | tail ], acc) do
    _flatten(tail, [head | acc])
  end
  defp _flatten([], acc), do: acc

  def span(to, to), do: [to]
  def span(from, to) when from > to, do: span(to, from)
  def span(from, to), do: [from | span(from + 1, to)]

  def primes(n) do
    range = span(2, n)
    range -- (for x <- range, y <- range, x > y, rem(x, y) == 0, do: x)
  end

end

MyEnum.all?([1, 2, 3, 4, 5])
|> IO.inspect

MyEnum.all?([1, 2, 3, 4, 5], &(&1 > 4))
|> IO.inspect

MyEnum.all?([4, 5, 6], &(&1 >= 4))
|> IO.inspect

MyEnum.each([1, 2, 3, 4], &IO.puts/1)

MyEnum.filter([1, 2, 3, 4, 5], &Integer.is_odd/1)
|> IO.inspect

MyEnum.flatten([ 1, 2, [3, 4, [5]], 6, [[[0]]]])
|> IO.inspect

MyEnum.primes(25)
|> IO.inspect
