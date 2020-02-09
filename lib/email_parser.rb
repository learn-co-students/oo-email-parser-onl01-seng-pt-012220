# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(csv)
    @email_addresses = csv
    #binding.pry
  end

  def parse
    answer = []
    answer = remove_duplicates(@email_addresses)
    answer.flatten
    #binding.pry
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
  def remove_duplicates(file_in)
    whitespace(commas(file_in)).uniq
    #binding.pry
  end


end
