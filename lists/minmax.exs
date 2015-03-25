defmodule MyList do

  def max(list), do: Enum.reduce(list, &(if &1 > &2, do: &1, else: &2))
  def min(list), do: Enum.reduce(list, &(if &1 < &2, do: &1, else: &2))

end

MyList.max([1, 4, 2, 99, 14])
|> IO.inspect

MyList.max([1, 4, 2, -99, 14])
|> IO.inspect

MyList.max([-1, -4, -2, -99, -14])
|> IO.inspect

MyList.min([1, 4, 2, 99, 14])
|> IO.inspect

MyList.min([1, 4, 2, -99, 14])
|> IO.inspect

MyList.min([-1, -4, -2, 99, -14])
|> IO.inspect
