defmodule ColorfulTest do
  use ExUnit.Case
  doctest Colorful

  import Colorful

  test "returns false if provided with something other than a number" do
    assert colorful?("not_a_number_but_a_string") == false
  end

  colorful_numbers = [0, 1, 23, 263, 987]
  not_colorful_numbers = [10, 236, 999]

  Enum.each(colorful_numbers, fn number ->
    test "returns true for #{number} which is colorful", number do
      assert colorful?(number) == true
    end
  end)

  Enum.each(not_colorful_numbers, fn number ->
    test "returns false for #{number} which is not colorful", number do
      assert colorful?(number) == false
    end
  end)
end
