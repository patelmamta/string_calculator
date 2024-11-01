class StringCalculator

  ### class method to add string numbers
  def self.add(str)
    return 0 if str.empty? # empty string return 0
    str.to_i # convert string number to integer
  end 
end