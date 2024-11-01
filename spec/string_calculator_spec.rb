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

    it "handles newline between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "allow newline between two numbers and with two digit numbers" do
      expect(StringCalculator.add("11\n2,13")).to eq(26)
    end
  end
end