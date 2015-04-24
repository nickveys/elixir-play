defmodule Sum do

  def values(dict) do
    Dict.values(dict)
    |> Enum.sum
  end

end

# Sum a Hashdict
[ one: 1, two: 2, three: 3 ]
|> Sum.values
|> IO.puts

# Sum a Map
%{ four: 4, five: 5, six: 6 }
|> Sum.values
|> IO.puts
