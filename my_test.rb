require 'test/unit'
require './main_class'

class MyTest < Test::Unit::TestCase
  def setup
    @y = Trap.new
  end

  def test_1
    assert_in_delta(@y.calc(-1.0, 4.0) do |x|
      x + Math.cos(x)
    end, 7.5846, 1e-4)
  end

  def test_2
    assert_in_delta(@y.calc(1.0, 2.0) do |x|
      Math.tan(x + 1) / (x + 1)
    end, -0.3768, 1e-4)
  end
end
