# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  
  attr_accessor :email_list
  
  def initialize(emails)
    @@email_list = emails
  end  
  
  def parse
    if @@email_list.include?(", ")
      parse_list = @@email_list.split(/[\s,]+/)
    else
      parse_list = @@email_list.split(" ")
    end
    parse_list.uniq!
    unique_list = parse_list
    unique_list
  end
  
end