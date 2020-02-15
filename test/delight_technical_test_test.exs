defmodule DelightTechnicalTestTest do
  use ExUnit.Case
  doctest DelightTechnicalTest

  test "First part - Short input" do
    assert DelightTechnicalTest.resolve_first_part('./data/short_input.txt') == -6
  end

  test "First part - Default input" do
    assert DelightTechnicalTest.resolve_first_part('./data/default_input.txt') == 470
  end

  test "Second part - Default input" do
    assert DelightTechnicalTest.resolve_second_part('./data/default_input.txt') == 790
  end
end
