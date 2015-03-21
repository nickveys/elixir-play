# Erlang float w/2 decimal digits
f = 3.14159
:io.format("~.2f~n", [f])

# Elixir get envionment variable
System.get_env
|> IO.inspect

System.get_env("HOME")
|> IO.inspect

# Elixir get extension of filename
"my_file.ext"
|> Path.extname
|> IO.inspect

# Elixir get current working directory
System.cwd
|> IO.inspect

File.cwd
|> IO.inspect

# Execute command in shell
System.cmd("ls", ["-l"])
|> elem(0)
|> String.split(["\n"])
|> IO.inspect
