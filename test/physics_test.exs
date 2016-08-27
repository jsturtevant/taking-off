defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "coverter1 light to seconds works" do
    secs = Converter.to_light_seconds({:miles, 1000}, precision: 5)
    assert secs == 0.00537
  end

  test "ConverterTwo light to seconds works" do
    secs = ConverterTwo.to_light_seconds({:miles, 1000}, precision: 5)
    assert secs == 0.00537
  end

  test "ConverterTwo works with default values" do
    secs = ConverterTwo.to_light_seconds({:miles, 1000})
    assert secs == 0.00537
  end
end
