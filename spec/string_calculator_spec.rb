require_relative "../app/string_calculator.rb"

RSpec.describe StringCalculator do
  describe "add." do
    it "returns 0 of an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself in integer for a single number" do 
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of the muliple numbers in a single string" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "handles newlines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end
end