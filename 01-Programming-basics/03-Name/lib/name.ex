defmodule Name do
  @moduledoc """
  Documentation for `Name`.
  """

  def compute(first_name, middle_name, last_name) do
    Enum.join([first_name, middle_name, last_name], " ")
  end
end
