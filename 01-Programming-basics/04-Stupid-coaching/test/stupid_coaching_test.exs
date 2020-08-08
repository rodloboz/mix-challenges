defmodule StupidCoachingTest do
  use ExUnit.Case
  doctest StupidCoaching

  import StupidCoaching

  describe "The method coach_answer" do
    test "returns a String" do
      response = coach_answer("Hello Coach!")
      assert is_bitstring(response)
    end

    test "replies saying he does not care when you enter a statement" do
      response = coach_answer("I would love to eat some pizza!")
      assert response == "I don't care, get dressed and go to work!"
    end

    test "replies saying it's a silly question when you enter a question" do
      response = coach_answer("Can I eat some pizza?")
      assert response == "Silly question, get dressed and go to work!"
    end

    test "does not answer back (i.e. answers with an empty string) when you tell him you are going to work" do
      response = coach_answer("I am going to work right now!")
      assert response == ""
    end
  end

  # describe "The method coach_answer_enhanced" do
  #   test "returns a String" do
  #     response =  coach_answer_enhanced("Hello Coach!")
  #     assert is_bitstring(response)
  #   end

  #   test "replies saying he does not care when you enter a statement (and does not shout)" do
  #     response =  coach_answer("I would love to eat some pizza!")
  #     assert response == "I don't care, get dressed and go to work!"
  #   end

  #   test "replies saying it's a silly question when you enter a question (and does not shout)" do
  #     response =  coach_answer("Can I eat some pizza?")
  #     assert response == "Silly question, get dressed and go to work!"
  #   end

  #   test "does not answer back (i.e. answers with an empty string) when you tell him you are going to work (and does not shout)" do
  #     response =  coach_answer("I am going to work right now!")
  #     assert response == ""
  #   end

  #   test "prepends a motivation statement before saying he does not care when you shout a statement at him" do
  #     response =  coach_answer("I WOULD LOVE SOME PIZZA!")
  #     assert response == "I can feel your motivation! I don't care, get dressed and go to work!"
  #   end

  #   test "prepends a motivation statement before saying that it's a silly question when you shout a question at him" do
  #     response =  coach_answer("CAN I EAT SOME PIZZA?")
  #     assert response == "I can feel your motivation! Silly question, get dressed and go to work!"
  #   end

  #   test "does not answer back (i.e. answers with an empty string) when you shout at him saying you are going to work" do
  #     response =  coach_answer("I AM GOING TO WORK RIGHT NOW!")
  #     assert response == ""
  #   end
  # end
end
