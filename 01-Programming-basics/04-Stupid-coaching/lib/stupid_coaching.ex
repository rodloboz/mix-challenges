defmodule StupidCoaching do
  @moduledoc """
  Documentation for `StupidCoaching`.
  """

  def coach_answer("I am going to work right now!"), do: ""

  def coach_answer(message) do
    if String.at(message, -1) == "?" do
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(message = "I AM GOING TO WORK RIGHT NOW!") do
    String.capitalize(message)
    |> coach_answer
  end

  def coach_answer_enhanced(message) do
    ("I can feel your motivation! " ++ message)
    |> coach_answer
  end
end
