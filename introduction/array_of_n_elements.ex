x = IO.gets("")
|> Integer.parse()
|> elem(0)

if x == 0, do: [], else: Enum.to_list(1..x)
|> IO.inspect(limit: :infinity)
