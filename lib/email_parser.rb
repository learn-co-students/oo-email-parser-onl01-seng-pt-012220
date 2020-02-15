class EmailAddressParser

  attr_accessor :emails

  def initialize(emails)
    self.emails = emails
  end

  def parse
    self.emails.split(/ |\, /).each {|x| x.strip}.uniq
  end

end 

