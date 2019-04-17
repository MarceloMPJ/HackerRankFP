defmodule Solution do
  def get_integer do
    IO.gets("") |> Integer.parse() |> elem(0)
  end

  def get_float do
    IO.gets("") |> Float.parse() |> elem(0)
  end

  def evaluate(x) do
    (1) + (x) + (:math.pow(x, 2)/2) + (:math.pow(x, 3)/6) + (:math.pow(x, 4)/24) + (:math.pow(x, 5)/120) + (:math.pow(x, 6)/720) + (:math.pow(x, 7)/5040) + (:math.pow(x, 8)/40320) + (:math.pow(x, 9)/362880)
  end

  def solve do
    n = get_integer()
    (1..n)
    |> Enum.each(fn _ ->
      get_float()
      |> evaluate()
      |> IO.puts()
    end)
  end
end

Solution.solve()
