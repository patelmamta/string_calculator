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

    it "supports different delimiters at begining" do
      expect(StringCalculator.add("//;\n12;2")).to eq(14)
    end

    it "supports different delimiters at the end" do
      expect(StringCalculator.add(";\n14;2\\")).to eq(16)
    end

    it "throws an exception with a message when a negative number is passed" do
      expect { StringCalculator.add("1,-1") }.to raise_error("negative numbers are not allowed: -1")
    end

    it 'shows all negative numbers in the exception message when multiple negative numbers are present' do
      expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers are not allowed: -2, -3")
    end
  end
end