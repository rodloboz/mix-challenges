defmodule ExperimentMethodsTest do
  use ExUnit.Case
  doctest ExperimentMethods

  import ExperimentMethods

  describe "#get_rid_of_surrounding_whitespaces" do
    test "should get rid of both leading and trailing whitespaces" do
      assert get_rid_of_surrounding_whitespaces("  hey yo  ") == "hey yo"
      assert get_rid_of_surrounding_whitespaces(" nice try!") == "nice try!"
    end
  end

  describe "#belongs_to?" do
    test "should return true if the word is included in the string" do
      assert belongs_to?("hey jude", "jude") == true
    end

    test "should return false if the word is not included in the string" do
      assert belongs_to?("hey jude", "joe") == false
    end
  end

  describe "#replace" do
    test "should correctly replace the letter(s) in the string" do
      assert replace("casanova", "a", "o") == "cosonovo"
    end
  end

  describe "#exactly_divide" do
    test "should show exact division" do
      assert exactly_divide(13, 4) == 3.25
    end
  end

  describe "#divisible_by_two?" do
    test "should return true if number is even" do
      assert divisible_by_two?(6) == true
    end

    test "should return false if number is odd" do
      assert divisible_by_two?(7) == false
    end
  end

  describe "#random_subset" do
    test "should return a list of the correct size" do
      assert is_list(random_subset_example())
      assert length(random_subset_example()) == 4
    end

    test "should return random elements" do
      other_random_subset_example = random_subset(alphabet_list(), 4)
      refute random_subset_example() == other_random_subset_example
    end

    test "should return elements present in the initial list" do
      difference = random_subset_example() -- alphabet_list()
      assert Enum.empty?(difference)
    end
  end

  describe "#randomize" do
    test "should return random elements" do
      other_response = randomize(alphabet_list())
      refute randomized_list() == other_response
    end

    test "should return random copy of the initial list" do
      assert is_list(randomized_list())
      assert Enum.sort(randomized_list()) == Enum.sort(alphabet_list())
    end
  end

  describe "#ascending_order" do
    test "should return the array in alphabetical order" do
      list = alphabet_list() |> Enum.shuffle()
      received = ascending_order(list)
      assert received == Enum.sort(list)
    end
  end

  defp alphabet_list() do
    ?a..?z
    |> Enum.to_list()
  end

  defp random_subset_example() do
    alphabet_list()
    |> random_subset(4)
  end

  defp randomized_list() do
    alphabet_list()
    |> randomize
  end
end
