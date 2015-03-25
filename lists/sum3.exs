defmodule MyList do

  def sum([]), do: 0

  def sum([head | tail]), do: head + sum(tail)

end

MyList.sum([])
|> IO.inspect

MyList.sum([1,2,3,4])
|> IO.inspect
