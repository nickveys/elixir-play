defmodule MyList do

  def reduce([], value, _), do: value
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

end

MyList.reduce([1, 2, 3], 1, &(&1 * &2))
|> IO.inspect
