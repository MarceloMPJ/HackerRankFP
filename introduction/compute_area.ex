defmodule Solution do
  def get_integer do
    IO.gets("") |> Integer.parse() |> elem(0)
  end

  def get_array_integer do
    IO.gets("")
    |> String.split(" ")
    |> Enum.map(&(Integer.parse(&1)))
    |> Enum.map(&(elem(&1, 0)))
  end

  def calc(x1, y1, x2, y2), do: (x1*y2) - (x2*y1)

  def solve do
    n = get_integer()
    [x1, y1] = get_array_integer()
    (2..n)
    |> Enum.reduce({0.0, {x1, y1}}, fn _, {acc, {last_x, last_y}} ->
      [x, y] = get_array_integer()
      {calc(x, y, last_x, last_y) + acc, {x, y}}
    end)
    |> (fn {acc, {x2, y2}} -> abs((acc + calc(x1, y1, x2, y2))/2) end).()
    |> IO.puts()
  end
end

Solution.solve()
