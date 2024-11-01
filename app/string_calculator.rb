class StringCalculator

  ### class method to add string numbers
  def self.add(str)
    return 0 if str.empty? # empty string return 0
    str.scan(/\d+/).map(&:to_i).sum # scan numbers from string and sum the digital numbers.
  end 
end