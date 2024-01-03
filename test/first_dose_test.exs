defmodule FirstDoseTest do
  use ExUnit.Case
  doctest FirstDose

  test "greets the world" do
    assert FirstDose.hello() == :world
  end
end
