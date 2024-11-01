require_relative "../app/string_calculator.rb"

RSpec.describe StringCalculator do
  describe "add." do
    it "returns 0 of an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself in integer for a single number" do 
      expect(StringCalculator.add("1")).to eq(1)
    end
  end
end