defmodule Solution do
  def get_input do
    case (x = IO.gets("")) do
      :eof -> :eof
      _ -> x |> Integer.parse |> elem(0)
    end
  end

  def repeat_input(n) do
    x = get_input()
    if x != :eof do
      for _ <- 1..n, do: IO.puts(x)
      repeat_input(n)
    end
  end

  def solve do
    x = get_input()
    repeat_input(x)
  end
end

Solution.solve
