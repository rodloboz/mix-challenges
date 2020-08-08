defmodule Colorful do
  @moduledoc """
  Documentation for `Colorful`.
  """

  def colorful?(number) when is_bitstring(number), do: false

  def colorful?(number) do
    digits = Integer.digits(number)

    if length(digits) == 1 do
      true
    else
      products =
        digits ++
          Enum.map(2..(length(digits) - 1), fn i ->
            Enum.slice(digits, 1..i)
            |> Enum.reduce(fn x, acc -> x * acc end)
          end)

      length(products) == length(Enum.uniq(products))
    end
  end
end
