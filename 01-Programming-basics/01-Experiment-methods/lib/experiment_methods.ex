defmodule ExperimentMethods do
  @moduledoc """
  Documentation for ExperimentMethods.
  """

  def get_rid_of_surrounding_whitespaces(string), do: String.trim(string)
  def belongs_to?(string, word), do: String.contains?(string, word)
  def replace(string, old_letter, new_letter), do: String.replace(string, old_letter, new_letter)
  def exactly_divide(integer, divider), do: integer / divider
  def divisible_by_two?(integer), do: Integer.mod(integer, 2) == 0
  def random_subset(list, size), do: Enum.take_random(list, size)
  def randomize(list), do: Enum.shuffle(list)
  def ascending_order(list), do: Enum.sort(list)
end
