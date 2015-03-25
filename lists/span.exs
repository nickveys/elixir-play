defmodule MyList do

  def span(to, to), do: [to]
  def span(from, to) when from > to, do: span(to, from)
  def span(from, to), do: [from | span(from + 1, to)]

end

MyList.span(1, 5)
|> IO.inspect

MyList.span(26, 15)
|> IO.inspect
