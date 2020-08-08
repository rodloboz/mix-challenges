defmodule NameTest do
  use ExUnit.Case
  doctest Name

  import Name

  describe "#compute" do
    test "should return an String" do
      response = compute("", "", "")
      assert is_bitstring(response)
    end

    test "should concatenate all parameters together" do
      response = compute("Jean", "Michel", "Saurin")
      assert response == "Jean Michel Saurin"
    end
  end
end
