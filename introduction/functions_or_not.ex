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

  def solve do
    n = get_integer()
    (1..n)
    |> Enum.reduce({ true, %{} }, fn _, { flag, m } ->
      [x, y] = get_array_integer()
      if m[x] != y && m[x] != nil do
        { false, m }
      else
        { flag && true, Map.merge(m, %{x => y}) }
      end
    end)
    |> (fn {flag, _} ->
      if flag, do: IO.puts("YES"), else: IO.puts("NO")
    end).()
  end

  def main do
    t = get_integer()
    (1..t)
    |> Enum.each(fn _ -> solve() end)
  end
end

Solution.main()
