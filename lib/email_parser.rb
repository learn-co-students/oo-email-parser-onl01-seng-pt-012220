class EmailAddressParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    email_array = []
    email_array = @emails.split(/[,\s]/)
    email_array = email_array.reject { |e| e == ""}
    email_array.uniq
  end

end
