defmodule Solution do
  def get_integer do
    case (x = IO.gets("")) do
      :eof -> :eof
      _ -> x |> Integer.parse |> elem(0)
    end
  end

  def build_list(list \\ []) do
    y = get_integer()
    if y != :eof, do: build_list(list ++ [y]), else: list
  end

  def filter(list, fun, new_list \\ []) do
    unless Enum.empty?(list) do
      [head | tail] = list
      if fun.(head), do: filter(tail, fun, new_list++[head]), else: filter(tail, fun, new_list)
    else
      new_list
    end
  end

  def each(list, fun) do
    unless Enum.empty?(list) do
      [head | tail] = list
      fun.(head)
      each(tail, fun)
    end
  end

  def solve do
    x = get_integer()
    build_list()
    |> filter(&(&1 < x))
    |> each(&(IO.puts(&1)))
  end
end

Solution.solve()
