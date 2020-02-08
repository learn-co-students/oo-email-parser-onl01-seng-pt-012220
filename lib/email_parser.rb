# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser
  #@@all = []
  attr_accessor :email_addresses
  def initialize(csv)
    @email_addresses = parse(csv)
    #binding.pry
  end
  def parse(file_in)
    commas(file_in)
    whitespace(file_in)
    answer = []
    answer = whitespace(commas(file_in)).flatten
    answer
    binding.pry
  end

  def commas(all_one_string)
    all_one_string.split(",")
    #binding.pry
  end

  def whitespace(array_of_strings)
    array_of_strings.collect do |str|
      str.split(" ").flatten
    end
    #binding.pry
  end



end
