# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  #setter and getter for emails
  attr_accessor :emails
  
  #define initialize method
  def initialize(emails)
    
    @emails = emails 
end

# define parse method
def parse
  
# does this work? WHY?!? 
emails.delete(',').split.uniq 

  end
end