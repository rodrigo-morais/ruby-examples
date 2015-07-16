require "minitest/autorun"

class TestCalculator < Minitest::Test
    def test_one_equal
        assert_equal 1, 1
    end
end