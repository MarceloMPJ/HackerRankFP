defmodule Solution do
  def get_integer do
    case IO.gets("") do
      :eof -> :eof
      x -> x |> Integer.parse() |> elem(0)
    end
  end

  def build_list(list \\ []) do
    case get_integer() do
      :eof -> list
      x -> build_list(list ++ [x])
    end
  end

  def solve do
    build_list()
    |> Enum.map(&(abs(&1)))
    |> Enum.each(&(IO.puts(&1)))
  end
end

Solution.solve()
