defmodule Spawn2 do
  def greet do
    receive do
      { sender, msg } ->
        send sender, { :ok, "Hello, #{msg}!" }
    end
  end
end

pid = spawn(Spawn2, :greet, [])

send pid, { self, "Monkeys" }
receive do
  { :ok, message } ->
    IO.puts message
end

send pid, { self, "Donkeys" }
receive do
  { :ok, message } ->
    IO.puts message
end
