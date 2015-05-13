defmodule SBExercises do

  def all_printable?(charlist) do
    Enum.all?(charlist, &(?\s <= &1 && &1 <= ?~))
  end

end

SBExercises.all_printable?('hello')
|> IO.inspect

SBExercises.all_printable?(' He~~o? ')
|> IO.inspect

SBExercises.all_printable?('hełło')
|> IO.inspect
