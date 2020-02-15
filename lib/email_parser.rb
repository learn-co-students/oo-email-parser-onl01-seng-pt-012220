# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses

    @@emails = []

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
     parsing =  @email_addresses.split(/[, ]/).uniq.delete_if{|e| e.length == 0}
        parsing
    end

end