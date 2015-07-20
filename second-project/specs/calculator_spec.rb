require './lib/calculator'

describe Calculator do
    before do
        @calculator = Calculator.new
    end

    it "a sum is realized" do
        expect(@calculator.sum(1,2)).to eq(3)
    end
end