defmodule SBExercises do

  def all_printable?(charlist) do
    Enum.all?(charlist, &(?\s <= &1 && &1 <= ?~))
  end

  def anagram?(word1, word2) when is_binary(word1) do
    anagram?(String.to_char_list(word1), word2)
  end
  def anagram?(word1, word2) when is_binary(word2) do
    anagram?(word1, String.to_char_list(word2))
  end
  def anagram?(word1, word2) do
    Enum.sort(word1) == Enum.sort(word2)
  end

  def center(words) do
    max = Enum.map(words, &String.length/1) |> Enum.max
    Enum.each(words, &print_in_column(&1, max))
  end

  defp print_in_column(word, column_width) do
    spaces = div(column_width - String.length(word), 2)
    pad = String.duplicate(" ", spaces)
    IO.puts "#{pad}#{word}"
  end

end

SBExercises.all_printable?('hello')
|> IO.inspect

SBExercises.all_printable?(' He~~o? ')
|> IO.inspect

SBExercises.all_printable?('hełło')
|> IO.inspect

SBExercises.anagram?("hello", "lloeh")
|> IO.inspect

SBExercises.anagram?('hey', 'yeh')
|> IO.inspect

SBExercises.anagram?('sup', 'post')
|> IO.inspect

SBExercises.center(["cat", "zebra", "elephant"])
