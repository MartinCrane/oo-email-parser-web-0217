# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
	attr_accessor :email

	def initialize(email)
		self.email = email
	end

	def parse
		
		email_scrub = self.email.split("")
		email_scrub.delete_if {|letter| letter == "," }
		email_scrub = email_scrub.join
		email_scrub = email_scrub.split(" ")
		email_scrub.uniq
	
	end

end

x = EmailParser.new("John@goo.com, AGAGA@gom.com AGAGA@gom.com, AGsGA@gom.com")
puts x.parse

