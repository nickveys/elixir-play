defmodule Chop do

  def guess(actual, range = a..b) do
    guess = div(a + b, 2)
    IO.puts("Is it #{guess}?")
    _guess(actual, range, guess)
  end

  defp _guess(actual, _, actual), do: IO.puts("It's #{actual}!\n")
  defp _guess(actual, a..b, _) when actual < a or actual > b, do: "Derp!"
  defp _guess(actual, a.._, current) when current > actual, do: guess(actual, a..(current - 1))
  defp _guess(actual, _..b, current) when current < actual, do: guess(actual, (current + 1)..b)

end

Enum.each([1, 273, 500, 1000], &(Chop.guess(&1, 1..1000)))
