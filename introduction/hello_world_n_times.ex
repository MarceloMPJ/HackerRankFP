{n, _} = IO.gets("") |> Integer.parse
String.duplicate("Hello World\n", n) |> IO.puts
