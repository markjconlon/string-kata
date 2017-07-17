module StringCalculator

  def self.add(string)
    if string.class == String
      string.length
    else
      false
    end
  end

  # ...and here when the above becomes too complex.

end
