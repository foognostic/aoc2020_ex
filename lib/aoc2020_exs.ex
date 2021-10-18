defmodule Aoc2020Exs do
  @moduledoc """
  Documentation for `Aoc2020Exs`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Aoc2020Exs.hello()
      :world

  """
  def hello do
    :world
  end

  def read_exercise_data(day, path) do
    base = File.cwd!()
    full = Path.join([base, "sample_data", "#{day}", path])
    # TODO generalize this by moving the integer parsing out
    datums = File.read!(full)
    # oof this doesn't smell very Elixir-y
    lines = String.split(datums, "\n")
    present_lines = Enum.filter(lines, fn x -> String.length(x) > 0 end)
    Enum.map(present_lines, &String.to_integer/1)
  end
end
