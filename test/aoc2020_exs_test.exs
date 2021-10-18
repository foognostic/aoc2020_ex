defmodule Aoc2020ExsTest do
  use ExUnit.Case
  doctest Aoc2020Exs

  test "greets the world" do
    assert Aoc2020Exs.hello() == :world
  end

  test "reads the file" do
    assert [1721, 979, 366, 299, 675, 1456] ==
      Aoc2020Exs.read_exercise_data(:day01, "sample.txt")
  end
end
