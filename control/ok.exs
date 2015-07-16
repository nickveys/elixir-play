ok! = fn
        { :ok, result } -> result
        { _, result } -> raise "Barf! #{result}"
      end

ok!.(File.open("#{__DIR__}/ok.exs"))
ok!.(File.open("#{__DIR__}/ok.exs_blarf"))
