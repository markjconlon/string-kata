#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  it "returns value for when string has a single digit" do
    (-9..9).each do |digit|
      expect(StringCalculator.add(digit.to_s)).to eql(digit)
    end
  end

  it "returns the sum of two digits when seperated by a comma" do
    expect(StringCalculator.add("1,2")).to eql(3)
    expect(StringCalculator.add("7,9")).to eql(16)
  end

  it "returns the sum of two digits when seperated by a comma" do
    expect(StringCalculator.add("12,45")).to eql(57)
  end

  it "returns the sum of strings of digits regardless of number of digits and commas" do
    expect(StringCalculator.add("12,9,100")).to eql(121)
  end
end
