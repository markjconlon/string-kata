module StringCalculator

  def self.add(string)
    return string.to_i unless string.include? ","
      y = string.split(",")
      y[0].to_i + y[1].to_i
  end

  # ...and here when the above becomes too complex.

end
