defmodule Solution do
  def solve(ans \\ 0) do
    if IO.gets("") == :eof, do: IO.puts(ans), else: solve(ans+1)
  end
end

Solution.solve()
