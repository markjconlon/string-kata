module StringCalculator

  def self.add(string)
    delim = ","
    if string[0..1] == "//"
      delim = string[2]
      string = string[4..-1]
    end
    string.gsub!(/\n/, delim)
    return to_i_with_raise(string) unless string.include?delim
    y = string.split(delim)
    y.inject(0) { |t,s| t + to_i_with_raise(s) }
  end

  def self.to_i_with_raise(string)
    i = string.to_i
    raise "Oh no!" if i < 0
    i
  end

  # ...and here when the above becomes too complex.

end
