# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
 
 class EmailAddressParser
    attr_accessor :email
   
   
   def initialize(email_addresses)
     @email = email_addresses
   end
   
   def parse
     parsed_emails = @email.split(/[\s,]/)
     parsed_emails.delete("")
     parsed_emails  = parsed_emails.uniq 
         
   end
   
 end
   