defmodule AgeInDays do
  @moduledoc """
  Documentation for `AgeInDays`.
  """

  def calculate(day, month, year) do
    date = Date.new(year, month, day) |> elem(1)
    Date.utc_today() |> Date.diff(date)
  end
end
