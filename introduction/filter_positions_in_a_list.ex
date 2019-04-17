defmodule Solution do
  def get_input do
    case (x = IO.gets("")) do
      :eof -> :eof
      _ -> x |> Integer.parse |> elem(0)
    end
  end

  def solve(on) do
    x = get_input()
    if x != :eof do
      if on, do: IO.puts(x)
      solve(!on)
    end
  end
end

Solution.solve(false)
