# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  @emails = ""
  @emails_array = []
  
def initialize(emails)
  @emails = emails
end

def parse
  @emails_array = @emails.split(" ")
  @emails_array.each {|email| email.chop! if email.end_with?(",")}
  
  @emails_array.uniq
  
end
  
end
