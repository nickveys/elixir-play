defmodule MyList do

  def caesar(list, n) do
    Enum.map(list, &(?a + rem(&1 - ?a + n, ?z - ?a + 1)))
  end

end

MyList.caesar('ryvkve', 13)
|> IO.inspect

MyList.caesar('elixir', 13)
|> IO.inspect
