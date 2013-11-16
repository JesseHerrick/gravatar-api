class Gravatar
	def self.get(email = @@email)
		hash = Gravatar.hash!(email)
		return "http://www.gravatar.com/avatar/#{hash}"
	end
end