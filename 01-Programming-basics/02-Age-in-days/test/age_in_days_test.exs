defmodule AgeInDaysTest do
  use ExUnit.Case
  doctest AgeInDays

  import AgeInDays

  describe "#calculate" do
    test "should return an Integer" do
      response = calculate(1, 1, 2000)
      assert is_integer(response)
    end

    test "should compute the right number of days" do
      target_age = 365 * 25
      birthdate = Date.utc_today() |> Date.add(-target_age)
      response = calculate(birthdate.day, birthdate.month, birthdate.year)
      assert response == target_age
    end
  end
end