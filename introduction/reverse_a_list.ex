defmodule Solution do
  def get_integer do
    case x = IO.gets("") do
      :eof -> :eof
      _ -> x |> Integer.parse() |> elem(0)
    end
  end

  def build_list(list \\ []) do
    if (x = get_integer()) != :eof, do: build_list(list ++ [x]), else: list
  end

  def main do
    build_list()
    |> Enum.reverse()
    |> Enum.each(&(IO.puts(&1)))
  end
end

Solution.main()
