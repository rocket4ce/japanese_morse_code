defmodule JapaneseMorseCodeTest do
  use ExUnit.Case
  doctest JapaneseMorseCode

  test "greets the world" do
    assert JapaneseMorseCode.hello() == :world
  end
end
