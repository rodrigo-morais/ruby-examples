require 'minitest/autorun'
require './lib/calculator'

describe Calculator do
    before do
        @calculator = Calculator.new
    end

    describe "when the number 1 is summed with 2" do
        it "should return 3" do
            @calculator.sum(1,2).must_equal 3
        end
    end
end