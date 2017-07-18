module StringCalculator

  def self.add(string)
    return string.to_i unless string.include? "," || "\n"
    string.gsub!(/\n/, ",")
    y = string.split(",")
    y.inject(0) { |t,s| t + s.to_i }
  end

  # ...and here when the above becomes too complex.

end
