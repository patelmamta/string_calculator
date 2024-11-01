class StringCalculator

  ## class method to add string numbers
  def self.add(str)
    return 0 if str.empty? # empty string return 0
    numbers = str.scan(/[-+]*\d+/).map(&:to_i) # scan numbers from string
    negative_numbers = numbers.select { |n| n < 0 }
    raise "negative numbers are not allowed: #{negative_numbers.join(", ")}" unless negative_numbers.empty?
    numbers.sum
  end 
end