defmodule MyList do

  def mapsum([], _), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

end

MyList.mapsum([1, 2, 3], &(&1 * &1))
|> IO.inspect
