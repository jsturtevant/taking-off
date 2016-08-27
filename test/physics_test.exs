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

  test "Escape velocity for earth works" do 
    ev = Physics.Rocketry.escape_velocity(:earth) 
    assert ev == 11.2
  end

  test "Escape velocity for earth works when value specified" do 
    ev = Physics.Rocketry.escape_velocity(%{mass: 5.972e24, radius: 6.371e6})
    assert ev == 11.2
  end

  test "escape velocity for moon works" do
    ev = Physics.Rocketry.escape_velocity(:moon) 
    assert ev == 2.4
  end

  test "escape velocity for mars works" do
    ev = Physics.Rocketry.escape_velocity(:mars) 
    assert ev == 5.0
  end
end
