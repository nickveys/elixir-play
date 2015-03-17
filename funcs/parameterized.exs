prefix = fn pre ->
           fn suf -> "#{pre} #{suf}" end
         end

IO.puts(prefix.("Mrs").("Smith"))
IO.puts(prefix.("Elixir").("Rocks"))
