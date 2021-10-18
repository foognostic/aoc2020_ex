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

  def solve_day01_star1(numbers) do
    # hello n^2
    # hello assumptions that the input data has no collisions on sum 2020
    Enum.reduce(numbers, 0, fn outer, o_memo ->
      if o_memo > 0 do
        o_memo
      else
        Enum.reduce(numbers, 0, fn inner, i_memo ->
          if i_memo > 0 do
            i_memo
          else
            match = 2020 == outer + inner
            if match do
              outer * inner
            else
              0
            end
          end
        end)
      end
    end)
  end
end
