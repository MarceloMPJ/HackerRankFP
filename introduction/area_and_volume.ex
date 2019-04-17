defmodule Solution do
  def get_array_float do
    IO.gets("")
    |> String.split(" ")
    |> Enum.map(fn x ->
      x
      |> Float.parse()
      |> elem(0)
    end)
  end

  def pi, do: 3.1415926535897932384626433

  def fun(x, a_list, b_list) do
    Enum.zip(a_list, b_list)
    |> Enum.map(fn {a, b} -> (a*(:math.pow(x, b))) end)
    |> Enum.sum()
  end

  def volume(l, r, _, _) when l > r, do: 0.0

  def volume(l, r, a, b) do
    k = fun(l, a, b)
    ((pi*k*k)*0.001) + volume(l + 0.001, r, a, b)
  end

  def area(l, r, _, _) when l > r, do: 0.0

  def area(l, r, a, b) do
    (fun(l, a, b)*0.001) + area(l + 0.001, r, a, b)
  end

  def solve do
    a = get_array_float()
    b = get_array_float()
    [l, r] = get_array_float()

    area(l, r, a, b)   |> IO.puts()
    volume(l, r, a, b) |> IO.puts()
  end
end

Solution.solve()
