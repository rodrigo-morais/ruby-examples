require 'minitest/autorun'
require './lib/calculator'

class TestCalculator < Minitest::Test
    def setup
        @calculator = Calculator.new
    end

    def test_one_equal
        assert_equal 1, 1
    end

    def test_sum
        assert_equal @calculator.sum(1,2), 3
    end
end