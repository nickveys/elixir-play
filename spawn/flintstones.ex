defmodule Flint do
  def reply_name do
    receive do
      { sender, name } ->
        send sender, name
    end
  end
end

pid1 = spawn(Flint, :reply_name, [])
pid2 = spawn(Flint, :reply_name, [])

send pid1, { self, "Fred" }
send pid2, { self, "Betty" }

receive do
  name -> IO.puts name
end
receive do
  name -> IO.puts name
end
