defmodule MyEnum do

  def all?(collection, fun \\ fn x -> x end)

  def all?([], _), do: true
  def all?([head | tail], fun) do 
    fun.(head) && all?(tail, fun)
  end

end

MyEnum.all?([1, 2, 3, 4, 5])
|> IO.inspect

MyEnum.all?([1, 2, 3, 4, 5], &(&1 > 4))
|> IO.inspect

MyEnum.all?([4, 5, 6], &(&1 >= 4))
|> IO.inspect
